load "#{Rails.root}/db/name.rb"
users = User.create(
  [
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 420, super_admin: true, email: 'sa@hp.com', password:"sa"},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 0, super_admin: false, email: '0@hp.com', password:"0", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 1, super_admin: false, email: '1@hp.com', password:"1", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 2, super_admin: false, email: '2@hp.com', password:"2", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 3, super_admin: false, email: '3@hp.com', password:"3", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 4, super_admin: false, email: '4@hp.com', password:"4", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 5, super_admin: false, email: '5@hp.com', password:"5", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 6, super_admin: false, email: '6@hp.com', password:"6", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 7, super_admin: false, email: '7@hp.com', password:"7", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 8, super_admin: false, email: '8@hp.com', password:"8", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 9, super_admin: false, email: '9@hp.com', password:"9", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 10, super_admin: false, email: '10@hp.com', password:"10", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 11, super_admin: false, email: '11@hp.com', password:"11", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 12, super_admin: false, email: '12@hp.com', password:"12", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 13, super_admin: false, email: '13@hp.com', password:"13", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 14, super_admin: false, email: '14@hp.com', password:"14", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 15, super_admin: false, email: '15@hp.com', password:"15", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 16, super_admin: false, email: '16@hp.com', password:"16", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 17, super_admin: false, email: '17@hp.com', password:"17", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 18, super_admin: false, email: '18@hp.com', password:"18", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 19, super_admin: false, email: '19@hp.com', password:"19", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 20, super_admin: false, email: '20@hp.com', password:"20", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 21, super_admin: false, email: '21@hp.com', password:"21", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 22, super_admin: false, email: '22@hp.com', password:"22", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 23, super_admin: false, email: '23@hp.com', password:"23", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 24, super_admin: false, email: '24@hp.com', password:"24", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 25, super_admin: false, email: '25@hp.com', password:"25", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 26, super_admin: false, email: '26@hp.com', password:"26", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 27, super_admin: false, email: '27@hp.com', password:"27", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 28, super_admin: false, email: '28@hp.com', password:"28", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 29, super_admin: false, email: '29@hp.com', password:"29", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 30, super_admin: false, email: '30@hp.com', password:"30", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 31, super_admin: false, email: '31@hp.com', password:"31", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 32, super_admin: false, email: '32@hp.com', password:"32", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 33, super_admin: false, email: '33@hp.com', password:"33", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 34, super_admin: false, email: '34@hp.com', password:"34", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 35, super_admin: false, email: '35@hp.com', password:"35", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 36, super_admin: false, email: '36@hp.com', password:"36", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 37, super_admin: false, email: '37@hp.com', password:"37", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 38, super_admin: false, email: '38@hp.com', password:"38", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 39, super_admin: false, email: '39@hp.com', password:"39", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 40, super_admin: false, email: '40@hp.com', password:"40", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 41, super_admin: false, email: '41@hp.com', password:"41", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 42, super_admin: false, email: '42@hp.com', password:"42", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 43, super_admin: false, email: '43@hp.com', password:"43", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 44, super_admin: false, email: '44@hp.com', password:"44", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 45, super_admin: false, email: '45@hp.com', password:"45", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 46, super_admin: false, email: '46@hp.com', password:"46", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 47, super_admin: false, email: '47@hp.com', password:"47", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 48, super_admin: false, email: '48@hp.com', password:"48", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 49, super_admin: false, email: '49@hp.com', password:"49", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 50, super_admin: false, email: '50@hp.com', password:"50", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 51, super_admin: false, email: '51@hp.com', password:"51", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 52, super_admin: false, email: '52@hp.com', password:"52", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 53, super_admin: false, email: '53@hp.com', password:"53", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 54, super_admin: false, email: '54@hp.com', password:"54", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 55, super_admin: false, email: '55@hp.com', password:"55", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 56, super_admin: false, email: '56@hp.com', password:"56", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 57, super_admin: false, email: '57@hp.com', password:"57", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 58, super_admin: false, email: '58@hp.com', password:"58", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 59, super_admin: false, email: '59@hp.com', password:"59", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 60, super_admin: false, email: '60@hp.com', password:"60", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 61, super_admin: false, email: '61@hp.com', password:"61", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 62, super_admin: false, email: '62@hp.com', password:"62", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 63, super_admin: false, email: '63@hp.com', password:"63", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 64, super_admin: false, email: '64@hp.com', password:"64", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 65, super_admin: false, email: '65@hp.com', password:"65", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 66, super_admin: false, email: '66@hp.com', password:"66", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 67, super_admin: false, email: '67@hp.com', password:"67", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 68, super_admin: false, email: '68@hp.com', password:"68", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 69, super_admin: false, email: '69@hp.com', password:"69", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 70, super_admin: false, email: '70@hp.com', password:"70", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 71, super_admin: false, email: '71@hp.com', password:"71", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 72, super_admin: false, email: '72@hp.com', password:"72", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 73, super_admin: false, email: '73@hp.com', password:"73", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 74, super_admin: false, email: '74@hp.com', password:"74", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 75, super_admin: false, email: '75@hp.com', password:"75", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 76, super_admin: false, email: '76@hp.com', password:"76", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 77, super_admin: false, email: '77@hp.com', password:"77", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 78, super_admin: false, email: '78@hp.com', password:"78", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 79, super_admin: false, email: '79@hp.com', password:"79", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 80, super_admin: false, email: '80@hp.com', password:"80", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 81, super_admin: false, email: '81@hp.com', password:"81", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 82, super_admin: false, email: '82@hp.com', password:"82", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 83, super_admin: false, email: '83@hp.com', password:"83", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 84, super_admin: false, email: '84@hp.com', password:"84", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 85, super_admin: false, email: '85@hp.com', password:"85", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 86, super_admin: false, email: '86@hp.com', password:"86", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 87, super_admin: false, email: '87@hp.com', password:"87", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 88, super_admin: false, email: '88@hp.com', password:"88", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 89, super_admin: false, email: '89@hp.com', password:"89", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 90, super_admin: false, email: '90@hp.com', password:"90", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 91, super_admin: false, email: '91@hp.com', password:"91", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 92, super_admin: false, email: '92@hp.com', password:"92", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 93, super_admin: false, email: '93@hp.com', password:"93", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 94, super_admin: false, email: '94@hp.com', password:"94", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 95, super_admin: false, email: '95@hp.com', password:"95", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 96, super_admin: false, email: '96@hp.com', password:"96", role: 0},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 97, super_admin: false, email: '97@hp.com', password:"97", role: 1},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 98, super_admin: false, email: '98@hp.com', password:"98", role: 2},
    { f_name: "#{first_name}", m_name: "#{first_name}", l_name: "#{last_name}", employee_num: 99, super_admin: false, email: '99@hp.com', password:"99", role: 0},
  ]
)

projects = Project.create(
  [
    { project_name: "Proj1", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj2", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj3", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj4", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj5", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj6", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj7", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj8", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj9", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj10", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj11", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj12", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj13", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj14", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj15", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj16", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj17", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj18", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj19", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj20", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj21", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj22", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj23", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj24", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj25", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj26", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj27", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj28", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj29", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj30", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj31", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj32", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj33", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj34", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj35", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj36", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj37", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj38", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj39", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj40", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj41", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj42", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj43", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj44", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj45", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj46", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj47", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj48", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj49", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj50", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj51", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj52", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj53", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj54", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj55", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj56", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj57", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj58", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj59", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj60", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj61", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj62", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj63", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj64", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj65", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj66", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj67", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj68", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj69", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj70", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj71", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj72", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj73", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj74", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj75", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj76", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj77", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj78", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj79", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj80", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj81", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj82", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj83", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj84", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj85", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj86", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj87", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj88", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj89", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj90", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj91", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj92", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj93", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj94", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj95", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj96", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj97", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj98", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj99", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj100", end_date: "", ppm_id: "What is this?"}
  ]
)

project_users = ProjectUser.create(
  [
    { project_id: 1, user_id: 1 },
    { project_id: 2, user_id: 2 },
    { project_id: 3, user_id: 3 },
    { project_id: 4, user_id: 4 },
    { project_id: 5, user_id: 5 },
    { project_id: 6, user_id: 6 },
    { project_id: 7, user_id: 7 },
    { project_id: 8, user_id: 8 },
    { project_id: 9, user_id: 9 },
    { project_id: 10, user_id: 10 },
    { project_id: 11, user_id: 11 },
    { project_id: 12, user_id: 12 },
    { project_id: 13, user_id: 13 },
    { project_id: 14, user_id: 14 },
    { project_id: 15, user_id: 15 },
    { project_id: 16, user_id: 16 },
    { project_id: 17, user_id: 17 },
    { project_id: 18, user_id: 18 },
    { project_id: 19, user_id: 19 },
    { project_id: 20, user_id: 20 },
    { project_id: 21, user_id: 21 },
    { project_id: 22, user_id: 22 },
    { project_id: 23, user_id: 23 },
    { project_id: 24, user_id: 24 },
    { project_id: 25, user_id: 25 },
    { project_id: 26, user_id: 26 },
    { project_id: 27, user_id: 27 },
    { project_id: 28, user_id: 28 },
    { project_id: 29, user_id: 29 },
    { project_id: 30, user_id: 30 },
    { project_id: 31, user_id: 31 },
    { project_id: 32, user_id: 32 },
    { project_id: 33, user_id: 33 },
    { project_id: 34, user_id: 34 },
    { project_id: 35, user_id: 35 },
    { project_id: 36, user_id: 36 },
    { project_id: 37, user_id: 37 },
    { project_id: 38, user_id: 38 },
    { project_id: 39, user_id: 39 },
    { project_id: 40, user_id: 40 },
    { project_id: 41, user_id: 41 },
    { project_id: 42, user_id: 42 },
    { project_id: 43, user_id: 43 },
    { project_id: 44, user_id: 44 },
    { project_id: 45, user_id: 45 },
    { project_id: 46, user_id: 46 },
    { project_id: 47, user_id: 47 },
    { project_id: 48, user_id: 48 },
    { project_id: 49, user_id: 49 },
    { project_id: 50, user_id: 50 },
    { project_id: 51, user_id: 51 },
    { project_id: 52, user_id: 52 },
    { project_id: 53, user_id: 53 },
    { project_id: 54, user_id: 54 },
    { project_id: 55, user_id: 55 },
    { project_id: 56, user_id: 56 },
    { project_id: 57, user_id: 57 },
    { project_id: 58, user_id: 58 },
    { project_id: 59, user_id: 59 },
    { project_id: 60, user_id: 60 },
    { project_id: 61, user_id: 61 },
    { project_id: 62, user_id: 62 },
    { project_id: 63, user_id: 63 },
    { project_id: 64, user_id: 64 },
    { project_id: 65, user_id: 65 },
    { project_id: 66, user_id: 66 },
    { project_id: 67, user_id: 67 },
    { project_id: 68, user_id: 68 },
    { project_id: 69, user_id: 69 },
    { project_id: 70, user_id: 70 },
    { project_id: 71, user_id: 71 },
    { project_id: 72, user_id: 72 },
    { project_id: 73, user_id: 73 },
    { project_id: 74, user_id: 74 },
    { project_id: 75, user_id: 75 },
    { project_id: 76, user_id: 76 },
    { project_id: 77, user_id: 77 },
    { project_id: 78, user_id: 78 },
    { project_id: 79, user_id: 79 },
    { project_id: 80, user_id: 80 },
    { project_id: 81, user_id: 81 },
    { project_id: 82, user_id: 82 },
    { project_id: 83, user_id: 83 },
    { project_id: 84, user_id: 84 },
    { project_id: 85, user_id: 85 },
    { project_id: 86, user_id: 86 },
    { project_id: 87, user_id: 87 },
    { project_id: 88, user_id: 88 },
    { project_id: 89, user_id: 89 },
    { project_id: 90, user_id: 90 },
    { project_id: 91, user_id: 91 },
    { project_id: 92, user_id: 92 },
    { project_id: 93, user_id: 93 },
    { project_id: 94, user_id: 94 },
    { project_id: 95, user_id: 95 },
    { project_id: 96, user_id: 96 },
    { project_id: 97, user_id: 97 },
    { project_id: 98, user_id: 98 },
    { project_id: 99, user_id: 99 },
    { project_id: 100, user_id: 100 }
  ]
)

reviews = Review.create(
  [
    { review_name: "Upload required artifcats to SDLCM" },
    { review_name: "Complete RE Project Startup review" },
    { review_name: "Trigger ALM release from SDLCM" },
    { review_name: "Complete RE Project Scoping review" },
    { review_name: "Complete EDW Scoping Architecture Review" },
    { review_name: "Complete Operational Readiness Review" },
    { review_name: "Complete RE Analysis review" },
    { review_name: "Complete Extract Impact Analysis Review" },
    { review_name: "Complete EDW Architecture Analysis Review" },
    { review_name: "Complete PII and DER Reviews" },
    { review_name: "Complete RE Design Review" },
    { review_name: "Complete DFS Review" },
    { review_name: "Complete EDW Architecture Design Review" },
    { review_name: "Complete RE Construct and Test Review" },
    { review_name: "Obtain DFS sign-off" },
    { review_name: "Complete all other appropriate IT reviews, as necessary" },
    { review_name: "Complete Data Model Peer Review" },
    { review_name: "Complete EDW Architecture Review" },
    { review_name: "Complete MTI Performance Review" },
    { review_name: "Complete MTI Review" },
    { review_name: "Complete RE Acceptance Test Review" },
    { review_name: "Complete MTP Performance Review" },
    { review_name: "Complete RFC Review" },
    { review_name: "Obtain MTP sign-off from business and IT" },
    { review_name: "Complete RE Implementation Review" },
    { review_name: "Attach all remaining SDLCM artifacts" },
    { review_name: "Complete RE Close Out Review" }
  ]
)
questions = Question.create(
  [
    { str: "Whats your name?" },
    { str: "Whats your age?" },
    { str: "Are you a guy?" },
    { str: "Some important question that needs to be asked?" },
    { str: "What is the square root of green?" }
  ]
)
