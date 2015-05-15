class Svg
	
	def initialize
		@svg_string = ""
		@height = nil
		@width = nil
	end

	def set_width(w)
		@width = Integer(w)
	end

	def set_height(h)
		@height = Integer(h)
	end

	def header()
		return "<svg xmlns='http://www.w3.org/2000/svg' width='#{@width}' height='#{@height}'>"
	end

	def footer()
		return "</svg>"
	end

	def get_string()
		return header() + @svg_string + footer()
	end

	def rect(x, y, w, h, args)
		write_arg = write_args(args)
		rect_str = "<rect x='#{x}' y='#{y}' width='#{w}' height='#{h}' #{write_arg} />"
		@svg_string += rect_str
	end

	def write_args(args)
		#args = {:fill=>\"this\"}
		args = args.to_s
		args.gsub! '{', ''
		args.gsub! '}', ''
		args.gsub! '>', ''
		args.gsub! ':', ''

		# puts args
		return args
	end
end
		