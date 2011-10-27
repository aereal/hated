migration 1, :create_sections do
	up do
		create_table :sections do
			column :id, Integer, :serial => true
			column :title, String, :length => 255
			column :body, Text
		end
	end

	down do
		drop_table :sections
	end
end
