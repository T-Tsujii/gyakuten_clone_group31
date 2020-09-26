class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :url
      t.integer :movie_id

      t.timestamps
    end
  end
end
