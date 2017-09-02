Gem::Specification.new do |gem|
  gem.name = "c10StickMotion"
  gem.version = "0.0.1"
  gem.date = "2017-06-20"
  gem.summary = "Stick aninimations"
  gem.description = "Shows some animations of stick men."
  gem.authors = ["DMonMac"]
  gem.email = "dmonmac@email.com"
  gem.files = ["lib/c10StickMotion.rb"] #This file is outside the lib folder and in the c10animation folder
  gem.homepage = "http://rubygems.org/gems/c10StickMotion"
  gem.license ="MIT"
end



# gem build c10StickMotion.gemspec
# gem install c10StickMotion-0.0.1.gem

# in irb
# require 'c10StickMotion'
# Available commands:
# Stick.side_to_side
# Stick.gymnastics
# Stick.cartwheel
