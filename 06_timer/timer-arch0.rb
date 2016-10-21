class Timer

	attr_accessor :seconds

	def initialize
		@seconds=0
		@mins=0
		@hrs=0
		@seconds2=0
		@sec_diff=0
		return @seconds

	end

		def time_string
			if @seconds > 3600
				@seconds2 = ((@seconds % 60) * 60)
				@sec_diff = (@seconds - @seconds2)
				@mins = (@sec_diff - 60)
				@hrs = ((@sec_diff - @mins) / 60)
				return "%02d:%02d:%02d" % [@hrs, @mins, @seconds2]
			

			elsif @seconds > 60
				@seconds2 = ((@seconds % 60) * 60)
				@sec_diff = (@seconds - @seconds2)
				@mins = (@sec_diff) / 60
				@hrs = 0
				return "%2d:%d:%d" % [@seconds2, @sec_diff, @mins]
			

			elsif @seconds > 10
				return "%02d:%02d:%0d" % [@hrs, @mins, @seconds]
			

			elsif @seconds < 10
				return "%02d:%02d:%02d" % [@hrs, @mins, @seconds]
			end
			
		end


end
