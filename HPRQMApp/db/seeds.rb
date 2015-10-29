users = User.create(
  [
    { f_name: "Super", l_name: "Admin", employee_num: 420, super_admin: true, email: 'sa@sa.com', password:"sa"},
    { f_name: "User", l_name: "1", employee_num: 1, super_admin: false, email: '1@1.com', password:"1"},
    { f_name: "User", l_name: "2", employee_num: 2, super_admin: false, email: '2@2.com', password:"2"},
    { f_name: "User", l_name: "3", employee_num: 3, super_admin: false, email: '3@3.com', password:"3"},
    { f_name: "User", l_name: "4", employee_num: 4, super_admin: false, email: '4@4.com', password:"4"},
    { f_name: "User", l_name: "5", employee_num: 5, super_admin: false, email: '5@5.com', password:"5"}
  ]
)

projects = Project.create(
  [
    { project_name: "Proj1", end_date: "", ppm_id: "What is this?"},
    { project_name: "Printer Drivers", end_date: "", ppm_id: "8675309"},
    { project_name: "Proj3", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj4", end_date: "", ppm_id: "What is this?"},
    { project_name: "Proj5", end_date: "", ppm_id: "What is this?"},
    { project_name: "Website", end_date: "", ppm_id: "What is this?"},
    { project_name: "Phone App", end_date: "", ppm_id: "What is this?"}
  ]
)

submitters = Submitter.create(
  [
    { project_id: projects[0].id, user_id: users[1].id },
    { project_id: projects[1].id, user_id: users[2].id },
    { project_id: projects[2].id, user_id: users[3].id },
    { project_id: projects[3].id, user_id: users[4].id },
    { project_id: projects[4].id, user_id: users[0].id }
  ]
)

approvers = Approver.create(
  [
    { project_id: projects[0].id, user_id: users[2].id },
    { project_id: projects[1].id, user_id: users[3].id },
    { project_id: projects[2].id, user_id: users[4].id },
    { project_id: projects[3].id, user_id: users[0].id },
    { project_id: projects[4].id, user_id: users[1].id }
  ]
)

admins = Admin.create(
  [
    { project_id: projects[0].id, user_id: users[0].id },
    { project_id: projects[1].id, user_id: users[1].id },
    { project_id: projects[2].id, user_id: users[2].id },
    { project_id: projects[3].id, user_id: users[3].id },
    { project_id: projects[4].id, user_id: users[4].id }
  ]
)
