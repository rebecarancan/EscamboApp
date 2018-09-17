class Backoffice::DiagramsController < BackofficeController

  def index
    %x(bundle exec erd --filename='public/diagrma')
  end
end
