class CreateValidate < ActiveRecord::Migration[6.0]
  def change
    create_table :validates do |t|
      change_column_null :title, false
      change_column_null :content, false
      change_column_null :url, false
    end
  end
end
