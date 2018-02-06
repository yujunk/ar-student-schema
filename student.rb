require_relative 'db/config'

# student = Student.first #retrieves the first record in your database
# p student.fullname #retrieve the name of the student you found from your the previous line

# student = Student.first #retrieves the first record in your database
# p student.calculatedage #retrieve the name of the student you found from your the previous line

# validation = Student.create(last_name: "Skywalker", first_name: "Luke", email:"hi@address.com", birthday: 1999).valid?
# p validation
# #true when done first time

# validation1 = Student.create(last_name: "Skywalker", first_name: "Luke", email:"1234.address.com", birthday: 1999).valid?
# p validation1
# #not @ - false

# validation2 = Student.create(last_name: "Skywalker", first_name: "Luke", birthday: 1999).valid?
# p validation2
# #no email - false

# validation3 = Student.create(last_name: "Skywalker", first_name: "Luke", email:"hi@address.com", birthday: 1999).valid?
# p validation3
# #not unique - false

# validation4 = Student.create(last_name: "Baboo", first_name: "Boi", email:"hi@address.com", birthday: 2017).valid?
# p validation4

# validation5 = Student.create(last_name: "Baboo", first_name: "Boi", email:"hi@address.com", birthday: 2011).valid?
# p validation5

# ## david's code
# # validate :validate_age
# # #validate - is calling own methods

# # def validate_age
# # 	errors.add(:birthday, "Error") if self.age <= 5


# Student.all.each do |student|
# 	student.update(teacher_id: rand(Teacher.all.count) + 1)
# 	#random will give 0-5 not inclusive of 6
# 	end

Student.all.each do |student|
	subject = Subject.new
	subject.update(student_id: rand(Student.all.count) + 1, teacher_id: rand(Teacher.all.count) + 1)
end