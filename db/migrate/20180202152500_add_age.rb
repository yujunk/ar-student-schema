
require_relative '../config'


# this is where you should use an ActiveRecord migration to

class AddAge < ActiveRecord::Migration[5.0]
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

      add_column :students, :age, :integer
  end
end


#https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/add_column
