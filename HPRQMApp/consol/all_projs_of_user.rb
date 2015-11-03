u = User.all

ad_projs = u[0].admins.map { |connection| connection.project }
ap_projs = u[0].approvers.map { |connection| connection.project }
sub_projs = u[0].submitters.map { |connection| connection.project }

all_projs = ad_projs + ap_projs + sub_projs

all_projs.inspect
