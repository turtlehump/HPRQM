p = Project.all

p[0].admins.map { |connection| connection.user }
