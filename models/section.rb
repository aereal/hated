class Section
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :title, String
	property :body, Text
	property :created_at, DateTime
	property :created_on, Date
	has n, :categories, through: Resource
end
