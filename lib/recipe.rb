class Recipe
	attr_reader(:title, :source, :servings, :comment, :id)


	define_method(:initialize) do |attributes|
		@title = attributes.fetch(:title)
		@source = attributes.fetch(:source)
		@servings = attributes.fetch(:servings)
		@comment = attributes.fetch(:comment)
		@id = attributes.fetch(:id).to_i()
	end
end
