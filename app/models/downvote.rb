class Downvote < ActiveRecord::Base
  belongs_to :question
  validates :question_id, presence: true
end