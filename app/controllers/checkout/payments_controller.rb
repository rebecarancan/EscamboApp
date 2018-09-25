class Checkout::PaymentsController < ApplicationController
  def create
    # Email: c00360231790763621821@sandbox.pagseguro.com.br
    # Senha: eW3vbX4RnbG1DL2e
    # Cartão de Crédito: 4111111111111111 / Bandeira: VISA Válido até: 12/2030 CVV: 123

    ad = Ad.find(params[:ad_id])
    ad.processing!

    order = Order.create(ad: ad, member_id: current_member.id)
    order.waiting!

    payment = PagSeguro::PaymentRequest.new

    payment.reference = order.id
    payment.notification_url = root_url #Fix later
    payment.redirect_url = site_ad_detail_url(ad)

    payment.items << {
      id: ad.id,
      description: ad.title,
      amount: ad.price.to_s.gsub(',' , '.')
    }

    response = payment.register

    if response.errors.any?
        redirect_to site_ad_detail_path(ad), alert: "Erro ao processar compra… Entre em contato com o SAC (xx) xxx.xxxx"
    else
        redirect_to response.url
    end
  end
end
