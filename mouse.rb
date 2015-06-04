class Mouse

	def initialize(window)
		@window = window
		@image = Gosu::Image.new(@window, "mouse.png", false)
		@scale = 0.25
		@width = @image.width * @scale
		@height = @image.height * @scale
		@x = Game::WIDTH/2 + (@width/2)
		@y = Game::HEIGHT - (@height/2)
		@z = 1
		@angle = 180
		@speed = 4
	end

	def update
		if @window.button_down?(Gosu::KbLeft)
			if (@x - (@width * @scale)) > 0
				@angle -= @speed
			end
		elsif @window.button_down?(Gosu::KbRight)
			if @x < Game::WIDTH
				@angle += @speed
			end
		end
	end

	def draw
		@image.draw_rot(@x, @y, @z, @angle,0,0,@scale, @scale)
	end

end