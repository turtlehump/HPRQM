p = Project.all
p[0].submitters.map { |connection| connection.user }
