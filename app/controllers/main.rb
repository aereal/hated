Hated.controllers do
	get :index do
		@days = Section.all.group_by {|sec| sec.created_on }
		render :index
	end

	get :day, map: '/:date' do
		date = Date.parse(params[:date])
		@sections = Section.all(created_on: date)
		render :_day, locals: {date: date, sections: @sections}
	end

	get :section do
	end
end
