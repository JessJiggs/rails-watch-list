class Bookmark < ApplicationRecord
  belongs_to :movie # if child "belongs to" - already has a dependancy -> so depend_destroy cant be done here because scope
  belongs_to :list #list = parent 

  validates :movie, :list, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'soz bro - id not unique'}
end
