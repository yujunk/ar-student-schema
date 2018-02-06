require_relative '../../db/config'
require 'date'
#https://rietta.com/blog/2015/03/13/ruby-current-year/

class Student < ActiveRecord::Base
# implement your Student model here
	has_many :subjects
	has_many :teachers, :through => :subjects

	def fullname
		return self.first_name + ' ' + self.last_name
	end

	def calculatedage
		return Date.today.year - self.birthday
	end

	validates :email, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates_uniqueness_of :email
	# validates :birthday, 
	# 	date: {after: Date.today.year - 1} - ERROR
	validate :validate_age

	def validate_age
		errors.add(:birthday, "Must be above 5 years old") if self.calculatedage <= 5
	end

	#https://stackoverflow.com/questions/24658657/activerecord-validate-url-if-it-is-present
	#https://apidock.com/rails/ActiveRecord/Validations/ClassMethods/validates_format_of
	#https://apidock.com/rails/ActiveRecord/Validations/ClassMethods/validates_uniqueness_of
	#https://github.com/codegram/date_validator

end


