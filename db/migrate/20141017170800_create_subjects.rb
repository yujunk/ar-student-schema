require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateSubjects < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :subjects do |t|
      t.string   :name
      t.integer  :teacher_id
      t.integer  :student_id

      t.timestamps
    end
  end
end