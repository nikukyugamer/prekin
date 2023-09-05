require 'time'

class String
  def prekin?
    target_time = Time.parse(self)

    target_time.prekin?
  end
end
