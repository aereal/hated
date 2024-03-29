Hated.controllers do
	before :day, :section do
		@date = Date.parse(params[:date])
	end

	get :index do
		@days = Section.all.group_by {|sec| sec.created_on }
		render :index
	end

	get :day, map: '/:date' do
		@sections = Section.all(created_on: date)
		render :day, locals: {date: @date, sections: @sections}
	end

	get :section, map: '/:date/:time' do
		time = Time.at(params[:time].to_i).to_datetime
		@section = Section.first(created_on: @date, created_at: time)
		render :section, locals: {section: @section}
	end
end
