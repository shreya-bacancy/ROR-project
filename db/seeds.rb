# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


author_id=1
500.times do
	Author.create(
	name:"test#{author_id}"
		)
	author_id+=1
	
end

book_id=1002
500.times do
	Book.create(
		title: "book#{book_id}",
		text: "title #{book_id}",
		author_id: book_id
		)
	book_id+=1

end

comment_id=2
500.times do
	Comment.create(
		commenter:"Commenter#{comment_id}",
		body:"body#{comment_id}",
		book_id:comment_id
	)
	comment_id+=1
end

