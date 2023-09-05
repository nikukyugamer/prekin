require 'date'

class Date
  def prekin?
    next_week = self + 7
    next_month = self.next_month

    friday? && (next_week.month == next_month.month)
  end
end
