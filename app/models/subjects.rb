require_relative '../../db/config'

class Subjects < ActiveRecord::Base
  belongs_to :teachers
  belongs_to :students

end