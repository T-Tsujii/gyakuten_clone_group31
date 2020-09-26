class RemoveMovieIdFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :movie_id, :integer
  end
end
