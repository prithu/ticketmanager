class WelcomeController < ApplicationController
before_filter :authenticate_employee!
	def index 
	  @tickets=Ticket.all
	  @users=User.all

	end
		def new_ticket
		end
			def create_ticket
			ticket = Ticket.new(:name => params[:name], :details => params[:details])
			ticket.save
			redirect_to :action=>:index
			end
	
				def new_user
				user=User.new(:name => params[:name], :address => params[:address])
				user.save
				redirect_to :action=>:index
				end
end
