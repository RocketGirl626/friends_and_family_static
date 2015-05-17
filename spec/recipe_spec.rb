require('spec_helper')

describe(Recipe) do
  describe('#recipe_name') do
    it('will return the name of the recipe') do
      test_recipe = Recipe.new({:recipe_name => 'Classic Lemon Curd', :source => 'Fine Dining, April 2009', :servings => 'Makes 2 cups', :comment => 'blah blah blah', :id => nil})
      expect(test_recipe.recipe_name()).to(eq('Classic Lemon Curd'))
    end
  end
end
