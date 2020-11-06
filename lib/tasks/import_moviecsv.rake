require 'csv'

namespace :import_moviecsv do
    desc "CSVデータをmovieテーブルにインポートするタスク"
  task movies: :environment do
    path = "db/csv_data/movie_data.csv"
    list = []
    
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end    
      puts "インポート処理を開始"
    begin
      Movie.create!(list)
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
