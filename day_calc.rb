
class DayCalc

  attr_accessor :months, :total_days

  def initialize
  	@months = []
  end

  def enter_month_and_days
  	puts "Month Name"
  	month_name = gets.chomp
    puts "Days in Month"
  	month_days = gets.chomp

  	@months.push({
  		name: month_name,
  		days: month_days.to_i
  	})

  end

  def add_days_of_month
  	@months.each do |month|
  	  total_days += month[:days].to_i
  	end
  end

  def draw_months
  	total_days = 0
  	@months.each do |month|
  	  puts month[:name] + ": " + month[:days].to_s
      total_days += month[:days]
  	end

  	puts ""

  	puts "Total Days: " + total_days.to_s

  end 

  def main

  	while true
  	  draw_months
  	  enter_month_and_days
  	end
  end


end

dc = DayCalc.new
dc.main