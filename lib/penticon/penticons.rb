class Penticons

	def initialize(util, svg)
		@hash = nil
		@svg = nil
		@tile = []
		@tile_color = []
		@util = util
		@svg = svg
	end

	def create(string)
		@hash = @util.hash(string)
	end

	def svg_string
		generate_background()
		generate_foreground()
		puts @svg.get_string()
		return @svg.get_string()
	end

	def generate_background
		size = @util.instance_variable_get(:@penticon_size)

		@svg.set_width(size)
		@svg.set_height(size)

		args = {:fill => @util.instance_variable_get(:@bg)}
		@svg.rect(0, 0, size, size, args)
	end

	def generate_foreground
		mark_tiles()
		fill_tiles()
		reflect_tiles()

		place_tiles()
	end

	def mark_tiles
		i = 0

		while i < 15 do
			@tile[i] = @hash[i].ord >> Integer(8-((i%8)+1)) & 1
			i = i + 1;
		end
	end

	def fill_tiles

		i = 0

		while i < 15 do
			if @tile[i] == 1
				dec = Integer(@hash[i], 16)
				index = @util.mapp(dec)
				@tile_color[i] = @util.instance_variable_get(:@colors)[index]
			else
				@tile_color[i] = @util.instance_variable_get(:@colors)[0]
			end
			i = i + 1
		end
	end

	def reflect_tiles
		i = 15

		while i < 25 do
			@tile_color[i] = @tile_color[i-(10*(i/10))]
			puts @tile_color[i]
			i = i + 1
		end
	end

	def place_tiles
		padding = @util.instance_variable_get(:@padding)
		size = @util.instance_variable_get(:@tile_size)

		i = 0
		while i < 25 do

			args = {:fill => @tile_color[i]}
			@svg.rect(padding+((size+padding)*(i/5)), padding+((size+padding)*(i%5)), size, size, args)
			i = i + 1
		end
	end

end
