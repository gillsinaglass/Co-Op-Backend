# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users

ryan = User.create(name: "Ryan", email: "rdgill95@gmail.com", profile_picture: "https://www.facebook.com/photo.php?fbid=10215782449468165&set=a.1518396333824&type=3&source=11&referrer_profile_id=1651994391", job_title: "Developer", user_bio: "Looking for a job", git_hub: "https://github.com/gillsinaglass", cover_image: "https://scontent-iad3-1.xx.fbcdn.net/v/t31.0-8/17240262_10211152534963196_7657082779556508117_o.jpg?_nc_cat=111&_nc_ht=scontent-iad3-1.xx&oh=0ab8e395fa8a4e718c215c44760ad72d&oe=5D3CD853")

kyle = User.create(name: "Kyle", email: "Kylel95@gmail.com", profile_picture: "https://images.sk-static.com/images/media/profile_images/artists/4634/huge_avatar", job_title: "Designer", user_bio: "Have A Job", git_hub: "https://github.com/gillsinaglass")

# Skills
ruby = Skill.create(skill_name: "Ruby", category: "Development")
react = Skill.create(skill_name: "React", category: "Development")
javascript = Skill.create(skill_name: "Javascript", category: "Development")
photoshop = Skill.create(skill_name: "Photoshop", category: "Design")


# Collaboration
collaboration1 = Collaboration.create(name: "Collab 1", description: "Seed Collab one", git_hub: "google.com", user_id: ryan.id)

# Work
work1 = Work.create(work_title: "Work 1", description: "First Seed Work", collaboration_id: collaboration1.id, estimated_time: 6, priority: "high", status: "Pending")
work2 = Work.create(work_title: "Work 2", description: "Second Seed Work", collaboration_id: collaboration1.id, estimated_time: 4, priority: "low", status: "Pending")
work3 = Work.create(work_title: "Work 3", description: "Third Seed Work", collaboration_id: collaboration1.id, estimated_time: 4, priority: "low", status: "Done")

#Team
team1 = Team.create(user_id: ryan.id, work_id: work1.id)
team2 = Team.create(user_id: kyle.id, work_id: work1.id)

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
