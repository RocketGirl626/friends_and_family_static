require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @recipes = Recipe.all()
  @categories = Category.all()
  erb(:index)
end

get('/recipe/:id') do
  @recipe = Recipe.find(params.fetch('id'))

  @categories = Category.all()
  erb(:recipe)
end

post('/recipe_cat_add/') do
  cat_name = params.fetch('cat_add')
  # new_category = Category.create({:cat_name => cat_name})
  category = Category.find_by({:cat_name => cat_name})
  recipe_id = params.fetch('recipe_id')
  recipe = Recipe.find(recipe_id)
  recipe.categories.push(category)
  @recipe = recipe
  erb(:recipe)
end

get('/category/:id') do
  @category = Category.find(params.fetch('id'))
  erb(:category)
end


post('/category_add/') do
  @cat_name = params.fetch('cat_name')
  Category.create({:cat_name => @cat_name})
  @categories = Category.all()
  @recipes = Recipe.all()
  erb(:index)
end

post('/recipe_add/') do
  @title = params.fetch('title')
  @rating = params.fetch('rating')
  @recipe = Recipe.create({:title => @title, :rating => @rating})
  @categories = Category.all()
  @recipes = Recipe.all()
  erb(:index)
end

post('/ingredient_add/') do
  @recipe = Recipe.find(params.fetch('id'))
  @name = params.fetch('name')
  Ingredient.create({:name => @name, :recipe_id => recipe.id().to_i})
  @ingredients = Ingredient.all()
  erb(:recipe)
end