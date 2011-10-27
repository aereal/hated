Hated.controllers do
	get :index do
		@sections = Section.all.group_by {|sec| sec.created_on }
		render :index
	end

	get :day do
	end

	get :section do
	end
end
