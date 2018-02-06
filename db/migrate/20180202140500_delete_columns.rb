
require_relative '../config'
#referring to config.rb file that prescribes the "require: active record & also points to ActiveRecord::Base"


class DeleteColumns < ActiveRecord::Migration[5.0] #5.0 is AR version
#change Class to same as file name with each iteration. In this case, convention: _delete_columns
  def change
      #you can't use the same file timestamp + naming to previous version again, and you can't use same methods again once ran.
      remove_column :students, :first_name, :string
      #convention structure: https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/remove_column
  end
end

#How to run: Terminal > cd ar-student-schema folder > rake db:migrate OR rake db:version = 20170126120000_phase_three.rb