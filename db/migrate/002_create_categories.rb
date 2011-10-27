migration 2, :create_categories do
	up do
		create_table :categories do
			column :id, Integer, :serial => true
			column :name, String, :length => 255
		end
	end

	down do
		drop_table :categories
	end
end
