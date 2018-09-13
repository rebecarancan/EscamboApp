class Ad < ApplicationRecord
  belongs_to :member
  belongs_to :category

  # Validates
  validates_presence_of :title, :description, :category, :price, :picture

  #Scopes
  scope :descending_order, ->(quantity = 12) { limit(quantity).order(created_at: :desc) }
  scope :to_the, ->(member) { where(member: member) }

  # paperclip
  has_attached_file :picture, styles: { medium: "320x150#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  #gem money_rails
  monetize :price_cents

end
