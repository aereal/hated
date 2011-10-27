Hated.helpers do
	def url_for_day(datetime)
		url_for(:day, date: datetime.strftime(options.path_date_format))
	end

	def url_for_section(datetime)
		url_for(:section,
			date: datetime.to_datetime.strftime(options.path_date_format),
			time: datetime.to_time.to_i
		)
	end

	def format_date(datetime)
		datetime.strftime(options.view_date_format)
	end

	def format_time(time)
		time.strftime(options.view_time_format)
	end
end
