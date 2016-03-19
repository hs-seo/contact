class EmailController < ApplicationController
	def email_form
	end

	def email_send
		email = params[:email]
		title = params[:title]
		content = params[:content]

		gmail = Gmail.connect("pcnshs@gmail.com", "tjgudtjr1!")
		gmail.deliver do
			to email
			subject tilte
			text_part do
				body content
			end
		end

		gmail.logout
	end
end
