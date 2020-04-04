# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Programmer.create(first_name: "Roba", last_name: "Arishi", phone: 988390 , email: "roba@hotmail.com")
Programmer.create(first_name: "Ahmad", last_name: "Mohmmad", phone: 939239, email: "ahmad@hotmail.com")
Programmer.create(first_name: "Raghad", last_name: "Ali", phone: 584939 , email: "raghas@hotmail.com")
Programmer.create(first_name: "Amal", last_name: "Yasser", phone: 3923829, email: "amal@hotmail.com")
Programmer.create(first_name: "Rehab", last_name: "Khalid", phone: 4847383 , email: "rehab@hotmail.com")

Project.create(programmer_id: 1 ,name: "Tic Tac Toe", description: "Play X and O game" , link: "https://tic-tac-toe")
Project.create(programmer_id: 2 ,name: "To Do list", description: "to do list of things" , link: "https://todo")
Project.create(programmer_id: 3 ,name: "Artist", description: "Artist and their songs" , link: "https://artist")
Project.create(programmer_id: 4 ,name: "Cooks", description: "Cooks website" , link: "https://cooks")
Project.create(programmer_id: 5 ,name: "Healty Life", description: "Healthy life website" , link: "https://the-health")
