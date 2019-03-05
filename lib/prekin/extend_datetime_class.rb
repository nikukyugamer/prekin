require 'date'

class DateTime
  def prekin?
    next_week = self + 7
    next_month = self.next_month

    self.friday? && (next_week.month == next_month.month)
  end

  def friday?
    self.wday == 5
  end
end