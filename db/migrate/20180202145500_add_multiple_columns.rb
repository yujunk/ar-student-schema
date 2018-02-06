
require_relative '../config'


# this is where you should use an ActiveRecord migration to

class AddMultipleColumns < ActiveRecord::Migration[5.0]
  def change
    # # HINT: checkout ActiveRecord::Migration.create_table
    # create_table :students do |t|
    # 	t.string :first_name
    # 	t.string :last_name
    # 	t.string :email
    # 	t.string :phone_number
    # 	t.date :birthday
    # 	t.timestamps
    # end
      # add columns that you would need for this table

      add_column :students, :first_name, :string, :null=>false, :default=>0
      add_column :students, :last_name, :string, :null=>false, :default=>0
      add_column :students, :email, :string
      add_column :students, :phone_number, :integer
      add_column :students, :birthday, :date 
  end
end


#https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/add_column
