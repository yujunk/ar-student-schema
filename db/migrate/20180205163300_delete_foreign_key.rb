
require_relative '../config'
#referring to config.rb file that prescribes the "require: active record & also points to ActiveRecord::Base"


class DeleteForeignKey < ActiveRecord::Migration[5.0] #5.0 is AR version
#change Class to same as file name with each iteration. In this case, convention: _delete_columns
  def change
  	remove_column :students, :teacher_id
  end
end
