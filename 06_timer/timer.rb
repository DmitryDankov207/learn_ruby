class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def get_seconds
  	seconds = (self.seconds % 60).to_s
  	seconds.chars.length > 1 ? seconds : "0" + seconds
  end

  def get_minutes
  	minutes = ((self.seconds / 60) % 60).to_s
  	minutes.chars.length > 1 ? minutes : "0" + minutes
  end

  def get_hours
  	hours = (self.seconds / 3600).to_s
  	hours.chars.length > 1 ? hours : "0" + hours
  end

  def time_string
  	[get_hours, get_minutes, get_seconds].join ":"
  end

  def padded(num)
  	result = num.to_s
  	result.chars.length > 1 ? result : "0" + result
  end
end
