# bundler: package manangment 
# bundle init 
# source "https://rubygems.org" : dependencias 
# https://www.ruby-toolbox.com  : dependencias 
# donde se almacenan las gemas en nuestro S.O? ... ls ~/.rvm/gems/ruby-3.1.2/gems


require 'faker'

puts Faker::Name.name
puts Faker::Address.full_address #=> "5479 William Way, East Sonnyhaven, LA 63637"
puts Faker::Markdown.emphasis #=> "Quo qui aperiam. Amet corrupti distinctio. Sit quia *dolor.*"
puts Faker::TvShows::RuPaul.queen #=> "Violet Chachki"
puts Faker::Alphanumeric.alpha(number: 10) #=> "zlvubkrwga"
puts Faker::ProgrammingLanguage.name #=> "Ruby"
puts Faker.class
puts Faker.methods.length # 111 