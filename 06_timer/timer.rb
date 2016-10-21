class Timer

	attr_accessor :seconds, :mins, :hrs, :secs

	def initialize
		@seconds=0
		@mins=0
		@hrs=0
		@secs=0
		return @seconds
	end

	def time_string
			if @seconds > 3600
				@secs = (@seconds % 60) 
				@mins = (((@seconds - @secs) / 60) - 60)
				@hrs = (@seconds - (@mins * 60) - @secs) / 3600
				return "%02d:%02d:%02d" % [@hrs, @mins, @secs]
			elsif @seconds > 60
				@secs = (@seconds % 60)
				@mins = (@seconds - @secs) / 60
				return "%02d:%02d:%02d" % [@hrs, @mins, @secs]
			elsif @seconds > 10
				@secs = (@seconds % 60)
				return "%02d:%02d:%02d" % [@hrs, @mins, @secs]
			elsif @seconds > 0
				return "%02d:%02d:%02d" % [@hrs, @mins, @seconds]
			elsif @seconds == 0
				return "%02d:%02d:%02d" % [@hrs, @mins, @seconds]
			end

	end
end
