class Section
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :title, String
	property :body, Text
	property :created_at, DateTime
	property :created_on, Date

	# associations
	has n, :categories, through: Resource

	# default scopes
	default_scope(:default).update(order: [:created_at.desc])
end
