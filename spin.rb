


class Spin

	def initialize
		@players = ["bob", "jimmy", "orion", "milsa"]
		@turn = rand(@players.length)
		@input = ""
	end

	def spin_it
		random = @players[rand(@players.length)]
		if random == @players[@turn]
			spin_it
		else
			puts "You get to kiss #{random}"
		end
	end

	# def check_player(temp)
	# 	if temp == @players[@turn]
	# 		spin_it
	# 	end
	# end

	def whose_turn

	end

	def check_spin(temp)
		if temp =="spin"
			spin_it
		else 
			puts "you can only type spin, try again."
			user_input
			check_spin(@input)
		end
	end

	def user_input
		@input = gets.chomp
	end


	def play_game
		loop do
			puts "Welcome to Spin the Bottle. It's #{@players[@turn]}'s turn"
			puts "Type -spin- to spin. "
			user_input
			check_spin(@input)
			if @turn == @players.length - 1
				@turn = 0
			else
				@turn += 1
			end
		end
	end


end

game = Spin.new

game.play_game