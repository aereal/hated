migration 1, :create_sections do
	up do
		create_table :sections do
			column :id, Integer, :serial => true
			column :title, String, :length => 255
			column :body, Text
			column :created_at, DateTime
			column :created_on, Date
		end
	end

	down do
		drop_table :sections
	end
end
