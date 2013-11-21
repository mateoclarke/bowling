

class BowlingGame
	attr_accessor :rolls

	def initialize
		@rolls = []
	end

	# Record a roll in the game.
	# pins - The Integer number of pins knocked down in this roll.
	# Returns nothing.
	def roll(pins)
		@rolls << pins
	end

	def score
		@rolls.reduce(:+)
	end
end



# bowl has 10 frames

# you get up to 2 tries each frame
# if you get a strike on your first, you don't get a second try
# if you don't get a strike, then you get a 2nd try


# if in 2 tries, you don't knock them all down, your score is the sum of both attempts
# 	if 2 tries, you knock them all down, you your score for the frame is 10 + the value of your next roll (1st try next frame)
# 	If in 1 try you knock them all down, then your score is 10 + the sum of your next two rolls (even if not in the same frame)

# On the last frame:
# 	If you get a spare you get one bonus try
# 	If you get a strike, you get two more bonus tries
# You simply sum the tenth frame. 