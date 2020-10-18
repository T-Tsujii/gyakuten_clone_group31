class ChangeColumnAwsTexts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :aws_texts, :title, false
    change_column_null :aws_texts, :content, false
  end
end
