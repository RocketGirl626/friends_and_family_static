require('rspec')
require('recipe')
require('ingredient')
require('instruction')
require('pg')

DB = PG.connect({:dbname => 'friends_and_family_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM recipes *;")
    DB.exec("DELETE FROM ingredients *;")
    DB.exec("DELETE FROM instructions *;")
  end
end