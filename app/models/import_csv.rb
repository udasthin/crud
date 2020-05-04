class ImportCsv < ApplicationRecord
  def self.import(path)
    CSV.foreach(path,headers:true) do |row|
      Friend.create(
        name:row["name"],
        point:row["point"],
        goal:row["goal"]
      )
    end
  end
end
 