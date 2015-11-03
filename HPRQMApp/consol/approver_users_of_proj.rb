p = Project.all

p[0].approvers.map { |connection| connection.user }
