require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many   :subjects
  has_many   :students, through: :subjects
  validates  :email, uniqueness: true
  validate   :email_validate
  validate   :phone_validate

  def name
    self.first_name + ' ' +self.last_name
  end

  def email_validate
    if !(email.include? '@') || !(email.match(/^[^\-]*@/).to_s.length > 1) || !(email.match(/@[^\-]*\./).to_s.length) || !(email.match(/\.[^\-]*$/).to_s.length > 2)
      errors.add(:email, "INVALID EMAIL!!!!")
    end
  end

  def phone_validate
    unless phone.gsub(/\D/, '').length >= 10
      errors.add(:phone, "INVALID PHONE!!!!")
    end
  end

end