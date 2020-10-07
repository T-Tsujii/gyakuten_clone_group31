class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      change_column_null t.string :title, false
      change_column_null t.string :url, false

      t.timestamps
    end
  end
end
