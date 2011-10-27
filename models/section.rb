class Section
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :title, String
	property :body, Text
	has n, :categories, through: Resource
end
