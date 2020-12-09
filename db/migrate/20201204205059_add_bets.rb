class AddBets < ActiveRecord::Migration[6.0]
  def change
  	create_table :bets do |t|
	  	t.references :user, null: false
	  	t.references :game, null: false
	  	t.references :week, null: false
	  	t.integer :cover
	  	t.string :correct

	  	t.timestamps
  	end
  end
end
