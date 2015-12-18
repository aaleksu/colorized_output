class String
  COLORS = {
    :blue => 34,
    :b => 34,
    :dark_gray => 90,
    :d_gray => 90,
    :d_g => 90,
    :d_gray => 90,
    :d_grey => 90,
    :green => 32,
    :g => 32,
    :light_red => 91,
    :light_r => 91,
    :l_r => 91,
    :l_red => 91,
    :purple => 35,
    :p => 35,
    :red => 31,
    :r => 31,
    :yellow => 33,
    :y => 33,
  }.freeze

  def color color = nil
  	
    return COLORS.keys if color.nil?
    return self unless COLORS.keys.include? color.to_sym

    color = COLORS[color.to_sym]
    "\e[0;#{color}m#{self}\e[0m"
  end

  def success
    self.color :g
  end

  def fail
    self.color :r
  end
end
