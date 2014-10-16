require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddAddressToStudents < ActiveRecord::Migration
  def change
    add_column :students, :address, :text
  end
end
