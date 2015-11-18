load "#{Rails.root}/db/first_names.rb"
load "#{Rails.root}/db/last_names.rb"

def first_name
  $first_names.sample
end

def last_name
  $last_names.sample
end
