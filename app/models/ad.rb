class Ad < ApplicationRecord

  #Searchkick Gem
  searchkick

  #Statuses
    enum status: [:active, :processing, :sold]

  #Constants
  QTT_PER_PAGE = 6

  #RatyRate gem
  ratyrate_rateable 'quality'

  #Callbacks
  before_save :md_to_html

  #Associations
  belongs_to :member
  belongs_to :category, counter_cache: true
  has_many :comments

  # Validates
  validates :title, :description_md, :description_short, :category, :picture, :finish_date, presence: true
  validates :price, numericality: {greater_than: 0}

  #Scopes
  scope :descending_order, ->(page) {
    order(created_at: :desc).page(page).per(QTT_PER_PAGE)
  }

  # scope :search, ->(term, page) {
  #   where("lower(title) LIKE ?", "%#{term.downcase}%").page(page).per(QTT_PER_PAGE)
  # }

  scope :to_the, ->(member, page) { where(member: member) }
  scope :by_category, ->(id, page) { where(category: id).page(page).per(QTT_PER_PAGE) }

  scope :random, ->(quantity) {limit(quantity).order("RANDOM()")}

  # paperclip
  has_attached_file :picture, styles: { large: "900x350#", medium: "320x150#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  #gem money_rails
  monetize :price_cents

  private

    def md_to_html
      options = {
          filter_html: true,
          link_attributes: {
            rel: "nofollow",
            target: "_blank"
          }
      }

      extensions = {
        space_after_headers: true,
        autolink: true
      }

      renderer = Redcarpet::Render::HTML.new(options)
      markdown = Redcarpet::Markdown.new(renderer, extensions)

      self.description = markdown.render(self.description_md)
    end

end
