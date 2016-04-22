# This data can be loaded with the rake db:seed (or created alongside the db with db:setup).

Technology.with_options kind: Technology.kinds[:programming_language] do |t|
  t.create!(name: "C/C++")
  t.create!(name: "Java")
  t.create!(name: "Ruby")
  t.create!(name: "Python")
  t.create!(name: "PHP")
end
Technology.with_options kind: :framework do |t|
  t.create!(name: "Wordpress")
  t.create!(name: "Joomla")
  t.create!(name: "Drupal")
  t.create!(name: "Typo3")
  t.create!(name: "Ruby on Rails")
  t.create!(name: "Sinatra")
end
Technology.with_options kind: :application do |t|
  t.create!(name: "ownCloud")
  t.create!(name: "dokuWiki")
  t.create!(name: "postfix")
  t.create!(name: "pfSense")
  t.create!(name: "FileMaker")
  t.create!(name: "postgreSQL")
  t.create!(name: "MySQL/mariaDB")
  t.create!(name: "etherpad lite")
end
Technology.with_options kind: :skill do |t|
  t.create!(name: "IT project management")
  t.create!(name: "Software Development")
end
Technology.with_options kind: :technology do |t|
  t.create!(name: "Network and Routing")
  t.create!(name: "LDAP")
  t.create!(name: "SQL")
  t.create!(name: "IT Security")
  t.create!(name: "Privacy")
  t.create!(name: "Encryption")
end
Technology.with_options kind: :os do |t|
  t.create!(name: "Windows")
  t.create!(name: "Mac OS")
  t.create!(name: "Linux/Unix")
end
Technology.with_options kind: :service do |t|
  t.create!(name: "GitHub")
end

Community.create!(name: "Sieben Linden")
