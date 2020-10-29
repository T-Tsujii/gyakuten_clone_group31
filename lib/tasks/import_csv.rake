require_relative "../import"

namespace :import_csv do

  desc "CSVデータをインポートするタスク"

  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")

    puts "インポート処理を開始"
    begin
      AwsText.transaction do
        AwsText.create!(list)
      end
      puts "インポート完了!!"
    rescue => e
      puts "#{e.class}: #{e.message}"
      puts "-------------------------"
      puts e.backtrace 
      puts "-------------------------"
      puts "インポートに失敗"
    end
  end
end