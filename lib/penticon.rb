require 'base64'

require_relative "penticon/utils"
require_relative "penticon/svgrb"
require_relative "penticon/penticons"

class Penticon

	def self.uri_image(string='nkman')
		@penticons = Penticons.new(Utils.new, Svg.new)
		base64_str = base64_string(string)
		return "url(data:image/svg+xml;base64,#{base64_str});"
	end

	def self.base64_string(string)
		svg_str = generate(string)
		base64_str = Base64.encode64(svg_str)
		return base64_str
	end

	def self.generate(string)
		@penticons.create(string)
		return @penticons.svg_string()
	end

end

puts Penticon.uri_image('Penticons')