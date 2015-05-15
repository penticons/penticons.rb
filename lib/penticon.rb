require 'base64'

require "penticon/utils"
require "penticon/svgrb"
require "penticon/penticons"

class Penticon

	def initialize
		@penticons = Penticons.new
	end

	def self.uri_image(string='nkman')
		base64_str = base64_string(string)
		return "url(data:image/svg+xml;base64,#{base64_str});"
	end

	def self.base64_string(string)
		svg_str = generate(string)
		base64_str = Base64.encode64(svg_str)
		return base64_str
	end

	def self.generate(string)
		p = @penticons.create(string)
		return p.Svg_string()
	end

end