namespace :import_csv do

  desc "CSVデータをインポートするタスク"

  task aws_texts: :environment do
    require "import"
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    p list

    puts "インポート処理を開始"
    begin
      AwsText.create!(list)
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