class RpsController < ApplicationController
	def paper
    	@computer_move = ["rock", "paper", "scissors"].sample
    	if (@computer_move == "paper")
        	@result = "You tied!"
        	@computer_image = "/assets/images/paper.png"
        	@result_label = "label label-warning"
    	elsif (@computer_move == "rock")
        	@result = "You won!"
        	@computer_image = "/assets/images/rock.png"
        	@result_label = "label label-success"
    	else    
        	@result = "You lost!"
        	@computer_image = "/assets/images/scissors.png"
        	@result_label = "label label-danger"
    	end
		render("paper.html.erb")
	end

	def rock
    	@computer_move = ["rock", "paper", "scissors"].sample
    	if (@computer_move == "rock")
        	@result = "You tied!"
        	@computer_image = "/assets/images/rock.png"
        	@result_label = "label label-warning"
    	elsif (@computer_move == "scissors")
        	@result = "You won!"
        	@computer_image = "/assets/images/scissors.png"
        	@result_label = "label label-success"
    	else    
        	@result = "You lost!"
        	@computer_image = "/assets/images/paper.png"
        	@result_label = "label label-danger"
    	end
		render("rock.html.erb")
	end

	def scissors
		@computer_move = ["rock", "paper", "scissors"].sample
    	if (@computer_move == "scissors")
        	@result = "You tied!"
        	@computer_image = "/assets/images/scissors.png"
        	@result_label = "label label-warning"
    	elsif (@computer_move == "paper")
        	@result = "You won!"
        	@computer_image = "/assets/images/paper.png"
        	@result_label = "label label-success"
    	else    
        	@result = "You lost!"
        	@computer_image = "/assets/images/rock.png"
        	@result_label = "label label-danger"
    	end
		render("scissors.html.erb")
	end
end