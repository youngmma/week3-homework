class DiceController < ApplicationController
	# define class var to track goal point
  	# http://www.tutorialspoint.com/ruby/ruby_classes.htm
	@@goal = 0

	# dice method will initialize instance vars
	def dices
		@rollAgain = 0
		@goalParam = 0
	end

	#returns random number from 1 to 6
	def randomRoll
	    1 + rand(6)
	end

	def play                  
		@die1 = randomRoll
		@die2 = randomRoll
		sum = @die1 + @die2

		@goalParam = params["goal"] #params[:goal]
		@rollAgain = params["rolled"] #params[:rolled]

		# If your first roll is a 7 or 11, you win.
		# If your first roll is a 2, 3 or 12, you lose.
		# Anything else becomes your goal. 
		if @rollAgain == "0"             
		    case sum
			    when 2, 3, 12
			        render "lost"
			    when 7, 11
			        render "win"     
			    else
					@@goal = sum
					@goalParam = @@goal
					@rollAgain = "1"
					render "rollagain"	
			end
		# Roll your goal again before rolling a 7, and you win. 
		# Roll a 7 instead of your goal, and you lose.
		else
			if sum == 7
			      render "lost" 
			elsif @@goal == sum
			      render "win" 
			else
			      @goalParam = @@goal
			      render "rollagain" 
			end
		end
	end
end