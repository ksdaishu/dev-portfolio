10.times do |x|
	Blog.create!(
    	title:"My Blog post #{x}",
    	body:'Flowers are also called the bloom or blossom of a plant. Flowers have petals. Inside the part of the flower that has petals are the parts which produce pollen and seeds. In all plants, a flower is usually its most colourful part.'
	)
end	

puts "10 bloges were created successfully"

5.times do |s|
	Skill.create!(
		title:"Ruby on Rails #{s}",
		percent:75
		)
end

puts "5 skills were created successfully"


9.times do |p|
	Portfolio.create!(
		title:"Portfolio tilte:#{p}",
		subtitle:'My great service',
        body:'Flowers are also called the bloom or blossom of a plant. Flowers have petals. Inside the part of the flower that has petals are the parts which produce pollen and seeds. In all plants, a flower is usually its most colourful part.',
        main_image:'https://placehold.it/600x400',
        thumb_image:'https://placehold.it/350x200'
		)
end	
puts "9 portfolio items created suucessfully"	