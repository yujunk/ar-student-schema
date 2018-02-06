require_relative '../config'


class CreateStudentForeignKey < ActiveRecord::Migration[5.0]
  def change
      add_reference :students, :teacher, foreign_key: true
      #foreign_key: true --> check whether theere is a teacher id
  end
end