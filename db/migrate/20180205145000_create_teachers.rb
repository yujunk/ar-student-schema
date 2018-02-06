
require_relative '../config'


# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    # # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :phone_number
    	t.date :birthday
    	t.timestamps
    end
     
  end
end
