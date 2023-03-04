class Post < ApplicationRecord
  extend FriendlyId
friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 2 }
  

  def should_generate_new_friendly_id
    title_changed? || slug.blank?
  end
end
