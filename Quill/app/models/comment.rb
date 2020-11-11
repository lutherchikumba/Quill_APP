class Comment < ApplicationRecord
  belongs_to :topic
  validates :topic, presence: true
  validates :topic, uniqueness: true, length: { is:600}
end
