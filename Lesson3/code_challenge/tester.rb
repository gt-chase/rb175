require 'yaml'
config = YAML.load_file('users.yaml')



# accessing a value
# config.each do |person| 
#   puts "#{person[0].to_s.capitalize} is interested in #{((person[1])[:interests]).join(", ")}."
# end