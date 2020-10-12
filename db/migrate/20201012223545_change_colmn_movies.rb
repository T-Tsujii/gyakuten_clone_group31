class ChangeColmnMovies < ActiveRecord::Migration[6.0]
  def change
    change_column_null :movies, :title, false
    change_column_null :movies, :url, false
  end
end
