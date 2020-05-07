class ImportCsv < ApplicationRecord
  def self.import(path)
    list = []
    CSV.foreach(path,headers:true) do |row|
      list << {
        name:row["name"],
        point:row["point"],
        goal:row["goal"]
      }  
    end
    puts "インポート処理を開始"
    Friend.create!(list)
    puts "インポート完了"
  end
end
 