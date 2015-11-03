u = User.all

projs = u[0].approvers.map { |connection| connection.project }
