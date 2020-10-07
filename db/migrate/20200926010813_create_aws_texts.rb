class CreateAwsTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :aws_texts do |t|
      change_column_null t.string :title, false
      change_column_null t.text :content, false

      t.timestamps
    end
  end
end
