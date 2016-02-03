
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating Projects"
25.times do |i|
	p = Project.create(name: "Project #{i}", description:"Hello #{i}")
	if i.odd?	
	p.entries.create(hours: 10 * i, minutes: 10 * i)
	else
	p.entries.create(hours: i, minutes: i)
	end
end

p = Project.create
10.times do 
	p.entries.create
end	

