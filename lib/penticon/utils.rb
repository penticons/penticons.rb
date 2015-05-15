require 'digest/sha1'

class Utils

	def initialize

		@bg ='#fefefe'
		@colors = []
		@colors[0] = "#eeeeee"
		@colors[1] = "#d6e685"
		@colors[2] = "#8cc665"
		@colors[3] = "#44a340"
		@colors[4] = "#1e6823"

		@padding = 5
		@tile_size = 30
		@penticon_size = (5 * @tile_size) + 30
	end

	def hash(string)
		return Digest::SHA1.hexdigest string
	end

	def mapp(a)
		return Integer((4 * Integer(a)) / 15)
	end
end