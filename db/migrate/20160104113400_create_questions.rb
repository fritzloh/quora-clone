class CreateQuestions < ActiveRecord::Migration
	def change
	 create_table :questions do |t|
     t.text :body, null: false
     t.belongs_to :user
    
     t.timestamps
     end
	end
end