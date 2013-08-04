class Comic < ActiveRecord::Base
  belongs_to :author, class_name: User, foreign_key: :user_id

  has_many :pages
  has_one :page, as: :first_page

  scope :newest, -> { order(created_at: :desc) }

  def last_published_at
    @last_published_at ||= pages.order(updated_at: :asc).first.updated_at
  end
end
