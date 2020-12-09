class AddWeeks < ActiveRecord::Migration[6.0]
  def change
  	create_table :weeks do |t|
  		t.string :name
	  	t.datetime :start_date
	  	t.boolean :current

	  	t.timestamps
  	end
  end
end
