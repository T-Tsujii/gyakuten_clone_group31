require "csv"

class Import
  def self.csv_data(path:)
    list = []
    CSV.foreach(path, headers: true) { |row| list << row.to_h }
    list
  end
end
