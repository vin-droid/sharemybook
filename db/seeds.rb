# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

states = ["Delhi","Kerala","Goa","Jammu and Kashmir","Rajasthan","Tamil Nadu","Karnataka","Maharashtra","Telangana","Gujarat","West Bengal","Uttar Pradesh","Andhra Pradesh","Madhya Pradesh","Bihar","Punjab","Haryana","Jharkhand","Assam	","Chandigarh","Tripura","Uttarakhand","Nagaland","Meghalaya","Sikkim","Chhattisgarh","Odisha","Uttarakhand","Puducherry","Mizoram","Manipur","Himachal Pradesh"]
states_with_id =  {0=>"Delhielhi", 1=>"KKeralarala", 2=>"GoGoa", 3=>"JamJammu and Kashmiru and Kashmir", 4=>"RajaRajasthanthan", 5=>"TamilTamil NaduNadu", 6=>"KarnatKarnatakaka", 7=>"MaharasMaharashtratra", 8=>"TelanganTelangana", 9=>"Gujarat", 10=>"West Bengal", 11=>"Uttar Pradesh", 12=>"Andhra Pradesh", 13=>"Madhya Pradesh", 14=>"Bihar", 15=>"Punjab", 16=>"Haryana", 17=>"Jharkhand", 18=>"Assam", 19=>"Chandigarh", 20=>"Tripura", 21=>"Uttarakhand", 22=>"Nagaland", 23=>"Meghalaya", 24=>"Sikkim", 25=>"Chhattisgarh", 26=>"Odisha", 27=>"Uttarakhand", 28=>"Puducherry", 29=>"Mizoram", 30=>"Manipur", 31=>"Himachal Pradesh"}
# cities



book_type = ["Educational And Professional Books", "Fiction & Non-Fiction Books", "Philosophy Books", "Indian Writing Books", "Religion & Spirituality Books", "Families and Relationships Books", "Reference Books", "Self-Help Books", "Hobbies & Interests Books"]



30.times {
	user = User.create!(email: Faker::Email.email,
		password: "abes1234",
		password_confirmation:"abes1234",
		:username => Faker::Name.unique.name.gsub(/\s+/,""),
		:f_name=> Faker::Name.unique.first_name,
		l_name: Faker::Name.unique.last_name,
		mob:"",
		state_id:Faker::Number.between(1, 29),
		city_id:Faker::Number.between(1, 30))
	user.save!
}

30.times{
	book = Book.create!(name: Faker::Book.title
		published_at: Faker::Date.between(1.year.ago, 2.year.ago,Date.today)
		author:Faker::Book.author
		user_id:Faker::Number.between(0, 30)
		availability: Faker::Date.between(1.year.from_now, Date.today)
		description: Faker::Lorem.paragraph
		price:Faker::Number.decimal(2)
		availability_status: "on"
		views: Faker::Number.between(1, 300)
		type: Faker::Book.genre)
	book.save!
}
