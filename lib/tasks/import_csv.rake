require 'csv'

namespace :import_csv do
  desc "CSVデータをインポートするタスク"

  task friends: :environment do
    def self.import(path)
      list = []
      CSV.foreach(path,headers:true) do |row|
        list << {
          name:row["name"],
          point:row["point"],
          goal:row["goal"]
        }  
      end
      puts "インポート処理を開始".red

      begin
        Friend.transaction do
          Friend.create!(list)
        end
        puts "インポート完了".green
      rescue ActiveModel::UnknownAttributeError => invalid
        # 例外が発生した場合の処理
        # インポートができなかった場合の例外処理
        puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
