class Bookmark < ApplicationRecord
  belongs_to :movie # if child "belongs to" - already has a dependancy -> so depend_destroy cant be done here because scope
  belongs_to :list #list = parent

  # validates :movie, :list, presence: true >>> dont need this here since line 7 val :movie_id - already does this whilst checking pairing too. 
  validates :comment, length: { minimum: 6, message:  'please type more than 6 characters'}
  validates :movie_id, uniqueness: { scope: :list_id, message: 'soz bro - id not unique'}
end
