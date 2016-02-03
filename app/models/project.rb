class Project < ActiveRecord::Base
	validates :name, 
	presence: true, 
	uniqueness: true, 
	length: {maximum: 30}, format: {with: /(\w|\s)+/}

	has_many :entries
	def self.clean_old
	where("created_at < ?", 1.week.ago).destroy_all
	end 
	def total_hours_in_month(month,year)
		sum = 0
		minuntes = 0

		month = Date.new(year, month)

		entries
		.where(date: month.beginning_of_month..month.end_of_month)
		.each do |entry|
		sum += entry.hours
		min_sum+= entry.minutes
	end		
		hour_minutes  = minutes/60
		sum + hour_minutes
	end	
end
