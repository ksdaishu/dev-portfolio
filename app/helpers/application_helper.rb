module ApplicationHelper
	def login_helper
		if current_user.is_a?(GuestUser)
      		(link_to "Sign Up", new_user_registration_path) +
          "<br>".html_safe +
          (link_to "login", new_user_session_path)
    	else
          link_to "logout", destroy_user_session_path , method: :delete      		
    	end
	end

	def source_helper(layoutname)
		if session[:source]
			greeting = "Thanks for visting me #{session[:source]} and you are on the #{layoutname} layout"
      		content_tag(:p, greeting, class: "source_greeting")
    	end
	end
end
