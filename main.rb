require 'rubygems'
require 'bundler/setup'

require 'gosu'
require 'logger'
require 'byebug'
require 'oj'

Dir["./utils/*.rb"].each {|file| require file }
Dir["./lib/*.rb"].each {|file| require file }
Dir["./states/*.rb"].each {|file| require file }
Dir["./entities/*/*.rb"].each {|file| require file }


class Tutorial < Gosu::Window
  def initialize
    super 640, 480
    $window = self
    $logger = Logger.new(STDOUT)
    $rootDir = Dir.pwd
    # $gameDir = Dir.new(Dir.pwd + '/game')

    pp $rootDir

    self.caption = "Tutorial Game"

    $states = Lib::StateMachine.new(State::MainMenu.new)
  end

  def button_down(id)
    super
    $states.current.button_down(id) if $states.current.respond_to? :button_down
  end
  
  def update
    $states.current.update
  end
  
  def draw
    $states.current.draw
  end
end

Tutorial.new.show