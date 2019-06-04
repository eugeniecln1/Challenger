# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start"

Challenge.destroy_all
RoleModel.destroy_all
Participation.destroy_all
User.destroy_all

user = User.create(email:"a@a.com", password: "challenge", username: "aha")
user2 = User.create(email:"yo@yo.com", password: "challenge", username: "yoyo")

mascotte = RoleModel.create(last_name: "Challenger", gender:"Neutral", description: "I am here to motivate you and help you grow into the best version of yourself!")
einstein = RoleModel.create(last_name: "Einstein", gender:"Male", description: "Science")
riri = RoleModel.create(first_name: "Rihanna", last_name: "Fenty", sector: "Entrepreneur, Entertainment", gender: "Female", description: "Famour singer, entrepreneur, business woman", picture: "https://www.themartinicanwayoflife.com/wp-content/uploads/2016/04/o-RIHANNA-900.jpg")
sofia = RoleModel.create(first_name: "Sofia", last_name: "Kovalevskaïa", sector: "Mathematics", gender: "Female", description: "She was the first woman in modern Europe to gain a doctorate in mathematics, the first to join the editorial board of a scientific journal, and the first to be appointed professor of mathematics.", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Sofja_Wassiljewna_Kowalewskaja_1.jpg/220px-Sofja_Wassiljewna_Kowalewskaja_1.jpg")
ada = RoleModel.create(first_name: "Ada", last_name: "Lovelace", sector: "Mathematics, Programming", gender: "Female", description: "has been called the world's first computer programmer. What she did was write the world's first machine algorithm for an early computing machine that existed only on paper.", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Ada_Lovelace_Chalon_portrait.jpg/600px-Ada_Lovelace_Chalon_portrait.jpg")


challenge = Challenge.create(title: "Start planning for the future", category: "Future me", description: "Where do you picture yourself in 5 years ? At university ? Studying ? Travelling ? Where ? What ? Why ? Now is the time to be ambitious !", role_model_id: mascotte.id)
challenge2 = Challenge.create(title: "Go outside", category: "Daily activities", description: "Go out in the sun and take a moment to appreciate the beauty of your world", role_model_id: einstein.id)


Participation.create(user_id: user.id, challenge_id: challenge.id, feedback: "I loved it", appreciation: 5, difficulty: 2)
Participation.create(user_id: user.id, challenge_id: challenge2.id, feedback: "It sucked", appreciation: 1, difficulty: 4)
Participation.create(user_id: user2.id, challenge_id: challenge.id, feedback: "Cool, i want more !", appreciation: 4, difficulty: 3)
Participation.create(user_id: user2.id, challenge_id: challenge2.id, feedback: "I thought it was amusing", appreciation: 3, difficulty: 1)

puts "End"
