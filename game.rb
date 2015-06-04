require 'gosu'
require './mouse.rb'

class Game < Gosu::Window
  WIDTH = 800
  HEIGHT = 600
  def initialize
    super WIDTH, HEIGHT
    self.caption = "Nice kitty?"
    @backgroud = Gosu::Image.new("kittens.jpg")
    @mouse = Mouse.new(self)
  end

  def update
    @mouse.update
  end

  def draw
  	@backgroud.draw(0,0,-1,0.5,0.5)
    @mouse.draw
  end
end

window = Game.new
window.show