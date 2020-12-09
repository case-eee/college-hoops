class AddGames < ActiveRecord::Migration[6.0]
  def change
  	create_table :games do |t|
	  	t.references :week, null: false
	  	t.string :home_team
	  	t.string :away_team
	  	t.string :home_ranking
	  	t.string :away_ranking
	  	t.float :spread
	  	t.string :favorite
	  	t.datetime :start_time
	  	t.integer :home_score
	  	t.integer :away_score
	  	t.string :cover

	  	t.timestamps
  	end
  end
end
