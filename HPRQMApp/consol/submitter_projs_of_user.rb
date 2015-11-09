u = User.all
projs = u[0].submitters.map { |connection| connection.project }
