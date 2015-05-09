require('spec_helper')

describe(Recipe) do
  describe('#title') do
    it('will return the title of the recipe') do
      test_recipe = Recipe.new({:title => 'Classic Lemon Curd', :source => 'Fine Dining, April 2009', :servings => 'Makes 2 cups', :comment => 'blah blah blah', :id => nil})
      expect(test_recipe.title()).to(eq('Classic Lemon Curd'))
    end
  end
end