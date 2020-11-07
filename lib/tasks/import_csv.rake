require_relative "../import"

namespace :import_csv do

  desc "aws_textsへCSVデータをインポートするタスク"

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

  namespace :import_csv do
    desc "CSVデータをmovieテーブルにインポートするタスク"
      task movies: :environment do
        list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    puts "インポート処理を開始"
    begin
      Movie.transaction do
        Movie.create!(list)
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
end