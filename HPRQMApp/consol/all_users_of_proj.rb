p = Project.all

ads = p[0].admins.map { |connection| connection.user }
aps = p[0].admins.map { |connection| connection.user }
subs = p[0].admins.map { |connection| connection.user }

all = ads + aps + subs

all.inpsect
