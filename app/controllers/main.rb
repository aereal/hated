Hated.controllers do
	get :index do
		@sections = Section.all.group_by {|sec| sec.created_on }
		render :index
	end

	get :day, map: '/:date' do
		@sections = Section.all(created_on: Date.parse(params[:date]))
	end

	get :section do
	end
end
