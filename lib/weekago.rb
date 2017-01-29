require "weekago/version"
require "date"

module Weekago

  def self.weekago(i)

    case Date.today.wday
    when 0 then
      mday = Date.today - 6
    when 1 then
      mday = d
    when 2 then
      mday = Date.today - 1
    when 3 then
      mday = Date.today - 2
    when 4 then
      mday = Date.today - 3
    when 5 then
      mday = Date.today - 4
    when 6 then
      mday = Date.today - 5
    end
#    print("基準月曜日", mday, "\n")  # for Debug

    i_date = Date.parse(i)
    if i_date < mday
      s = (mday - i_date).div(7) + 1
    else
      s = 0
    end
#    print("今から=", s, "週間前\n")
    return s
  end
end
