3.times do |s|
	Section.create!(
		title: "Section #{s}"
		)
end

puts "3 section created"

10.times do |x|
	Blog.create!(
    	title:"My Blog post #{x}",
    	body:'Flowers are also called the bloom or blossom of a plant. Flowers have petals. Inside the part of the flower that has petals are the parts which produce pollen and seeds. In all plants, a flower is usually its most colourful part.',
    	section_id: Section.last.id
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


8.times do |p|
	Portfolio.create!(
		title:"Portfolio tilte:#{p}",
		subtitle:'Ruby on Rails',
        body:'Flowers are also called the bloom or blossom of a plant. Flowers have petals. Inside the part of the flower that has petals are the parts which produce pollen and seeds. In all plants, a flower is usually its most colourful part.',
        main_image:'https://placehold.it/600x400',
        thumb_image:'https://placehold.it/350x200'
		)
end	
puts "8 portfolio items created suucessfully"	

8.times do |p|
	Portfolio.create!(
		title:"Portfolio tilte:#{p}",
		subtitle:'Angular',
        body:'Flowers are also called the bloom or blossom of a plant. Flowers have petals. Inside the part of the flower that has petals are the parts which produce pollen and seeds. In all plants, a flower is usually its most colourful part.',
        main_image:'https://placehold.it/600x400',
        thumb_image:'https://placehold.it/350x200'
		)
end	

puts "8 portfolio items created suucessfully"	