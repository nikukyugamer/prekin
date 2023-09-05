class Time
  def prekin?
    next_week = self + (60 * 60 * 24 * 7)
    next_month = month + 1

    friday? && (next_week.month == next_month)
  end
end
