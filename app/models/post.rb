class Post < ApplicationRecord
  extend FriendlyId 
  has_many :comments
  belongs_to : auther

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 2 }
  friendly_id :title, use: %i[slugged]

  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end
end
