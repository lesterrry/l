class Link < ApplicationRecord
  belongs_to :user

  validates :index, uniqueness: { scope: :user_id }
  validates :link, presence: true

  before_create :set_index

  private

  def set_index
    highest_index = user.links.maximum(:index)
    self.index = highest_index.nil? ? 1 : highest_index + 1
  end
end
