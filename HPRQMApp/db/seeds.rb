# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(
  [
    { f_name: "Smoke", m_name: "Weed", l_name: "Everyday", employee_num: 420, super_admin: true, email: 'SA@SA.com', password:"SA"},
    { f_name: "User", l_name: "1", employee_num: 1, super_admin: false, email: '1@1.com', password:"1"},
    { f_name: "User", l_name: "2", employee_num: 2, super_admin: false, email: '2@2.com', password:"2"},
    { f_name: "User", l_name: "3", employee_num: 3, super_admin: false, email: '3@3.com', password:"3"},
    { f_name: "User", l_name: "4", employee_num: 4, super_admin: false, email: '4@4.com', password:"4"}
  ]
)
