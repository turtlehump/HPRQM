u = User.all

projs = u[0].admins.map { |connection| connection.project }
