class Schedule < ApplicationRecord
  def self.import(file)
    xlsx = Roo::Excelx.new(file.tempfile)
    xlsx.each_row_streaming(offset: 1) do |row|
      schedule = self.new(date: row[0].value, event: row[1].value)

      schedule.save
    end
  end
end
