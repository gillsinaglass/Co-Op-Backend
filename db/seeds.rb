# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users

ryan = User.create(name: "Ryan", email: "rdgill95@gmail.com", profile_picture: "https://media.npr.org/assets/artslife/arts/2010/12/best-movies-of-2010/ryan-gosling-film-de4259b4abc784e312a677e5b48132ff6b2d8590-s800-c15.jpg", job_title: "Developer", user_bio: "Looking for a job", git_hub: "https://github.com/gillsinaglass", cover_image: "https://scontent-iad3-1.xx.fbcdn.net/v/t31.0-8/17240262_10211152534963196_7657082779556508117_o.jpg?_nc_cat=111&_nc_ht=scontent-iad3-1.xx&oh=0ab8e395fa8a4e718c215c44760ad72d&oe=5D3CD853")

kyle = User.create(name: "Kyle", email: "Kylel95@gmail.com", profile_picture: "https://images.sk-static.com/images/media/profile_images/artists/4634/huge_avatar", job_title: "Designer", user_bio: "Have A Job", git_hub: "https://github.com/gillsinaglass")

# Skills
ruby = Skill.create(skill_name: "Ruby", category: "Development")
react = Skill.create(skill_name: "React", category: "Development")
javascript = Skill.create(skill_name: "Javascript", category: "Development")
photoshop = Skill.create(skill_name: "Photoshop", category: "Design")


# Collaboration
collaboration1 = Collaboration.create(name: "Collab 1", description: "Seed Collab one", git_hub: "google.com", user_id: ryan.id, status:"Active", image_one: "https://images.livemint.com/rf/Image-621x414/LiveMint/Period2/2017/06/02/Photos/Opinion/oped1-kN3D--621x414@LiveMint.jpg")
collaboration2 = Collaboration.create(name: "Collab 2", description: "Seed Collab two", git_hub: "facebook.com", user_id: ryan.id, status:"Active", image_one: "https://www.investorsgroup.com/content/dam/investorsgroup/more/2016/10/IG_working_from_home.jpg")

# Work
work1 = Work.create(work_title: "Work 1", description: "First Seed Work", collaboration_id: collaboration1.id)
work4 = Work.create(work_title: "Work 4", description: "Fourth Seed Work", collaboration_id: collaboration1.id)
work2 = Work.create(work_title: "Work 2", description: "Second Seed Work", collaboration_id: collaboration2.id)
work3 = Work.create(work_title: "Work 3", description: "Third Seed Work", collaboration_id: collaboration2.id)

#Task
task1 = Task.create(user_id: ryan.id, work_id: work1.id, description: "This is to build out something cool", status: "Pending", estimated_time: 3, priority: "High")
task2 = Task.create(user_id: kyle.id, work_id: work1.id, description: "This is to build out something great", status: "Done", estimated_time: 5, priority: "Medium")
task3= Task.create(user_id: ryan.id, work_id: work1.id, description: "This is to build out something fun", status: "Not Started", estimated_time: 5, priority: "Low")
task4 = Task.create(user_id: kyle.id, work_id: work2.id, description: "This is to build out something cool", status: "Pending", estimated_time: 3, priority: "High")
task5 = Task.create(user_id: ryan.id, work_id: work2.id, description: "This is to build out something cool", status: "Done", estimated_time: 5, priority: "Medium")
task6 = Task.create(user_id: kyle.id, work_id: work3.id, description: "This is to build out something cool", status: "Pending", estimated_time: 3, priority: "High")
task7 = Task.create(user_id: ryan.id, work_id: work3.id, description: "This is to build out something cool", status: "Not Started", estimated_time: 5, priority: "Low")
task8 = Task.create(user_id: kyle.id, work_id: work3.id, description: "This is to build out something cool", status: "Done", estimated_time: 5, priority: "High")
task9 = Task.create(user_id: ryan.id, work_id: work4.id, description: "This is to build out something cool", status: "Pending", estimated_time: 7, priority: "Medium")
task10 = Task.create(user_id: kyle.id, work_id: work4.id, description: "This is to build out something cool", status: "Not Started", estimated_time: 7, priority: "High")
task11 = Task.create(user_id: ryan.id, work_id: work4.id, description: "This is to build out something cool", status: "Pending", estimated_time: 3, priority: "Low")
task12 = Task.create(user_id: ryan.id, work_id: work4.id, description: "This is to build out something cool", status: "Done", estimated_time: 7, priority: "Medium")

# UserSkills
UserSkill.create(user_id: ryan.id, skill_id: ruby.id)
UserSkill.create(user_id: ryan.id, skill_id: react.id)
UserSkill.create(user_id: ryan.id, skill_id: javascript.id)
UserSkill.create(user_id: kyle.id, skill_id: photoshop.id)

#WorkSkills
WorkSkill.create(skill_id: ruby.id, work_id: work1.id )
WorkSkill.create(skill_id: react.id, work_id: work1.id)
WorkSkill.create(skill_id: react.id, work_id: work2.id)
WorkSkill.create(skill_id: photoshop.id, work_id: work3.id)
