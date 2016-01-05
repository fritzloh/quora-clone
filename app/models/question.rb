


class Question < ActiveRecord::Base

	validates :body, presence:true
	validates :body, uniqueness:true


	belongs_to :user
	has_many :answers
	has_many :question_votes

end