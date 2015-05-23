require('spec_helper')

describe(Recipe) do
  describe('#recipe_name') do
    it('will return the name of the recipe') do
      test_recipe = Recipe.create({:recipe_name => 'Classic Lemon Curd', :source => 'Fine Dining, April 2009', :servings => 'Makes 2 cups', :comment => 'blah blah blah', :id => nil})
      expect(test_recipe.recipe_name()).to(eq('Classic Lemon Curd'))
    end
  end


  describe('#ingredients') do
    it("tells which ingredients are in it") do
      test_recipe = Recipe.create({:recipe_name => 'Classic Lemon Curd', :source => 'Fine Dining, April 2009', :servings => 'Makes 2 cups', :comment => 'blah blah blah', :id => nil})
      test_ingredient1 = Ingredient.create({:ingredient_name => "lemons", :recipe_id => test_recipe.id})
      test_ingredient2 = Ingredient.create({:ingredient_name => "sugar", :recipe_id => test_recipe.id})
     expect(test_recipe.ingredients()).to(eq([test_ingredient1, test_ingredient2]))
    end
  end
end
