require "base64"

cwd = File.expand_path File.dirname(__FILE__)
svg = File.join(cwd, "lib", "svg")
utils = File.join(cwd, "lib", "utils")
penticon = File.join(cwd, "lib", "penticon")

require_relative svg
require_relative utils
require_relative penticon

p = Penticon.new()
u = Utils.new()
s = Svg.new()

def Base64_string(string)
	svg_str = generate_svg(string)
	base64_str = Base64.encode64(svg_str)
	return base64_str
end

def Generate(string)
	p = penticon.New(arg)
	return p.Svg_string()
end

def uri_image(string)
	base64_str = Base64_string(string)
	return "url(data:image/svg+xml;base64,#{base64_str});"
end