# encoding: utf-8
class Hated < Padrino::Application
	register SassInitializer
	register Padrino::Rendering
	register Padrino::Mailer
	register Padrino::Helpers

	enable :sessions

	configure do
		set :per_page, 10
		set :header, true
		set :path_date_format, '%Y%m%d'
		set :view_date_format, '%Y-%m-%d'
		set :view_time_format, '%H:%M'
		set :site_title, 'はてなダイアリー'
		set :title_delimiter, ' - '

		Slim::Engine.set_default_options(pretty: true, format: :html4)
	end
end
