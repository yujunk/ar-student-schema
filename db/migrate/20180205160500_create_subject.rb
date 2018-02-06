
require_relative '../config'


class CreateSubject < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
    	t.belongs_to :teacher, index: true
        t.belongs_to :student, index: true
        t.timestamps
    end
     
  end
end
