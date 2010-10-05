# encoding: utf-8

require 'minitest/unit'

MiniTest::Unit.autorun

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'slim'

class Env
  def id_helper
    "notice"
  end

  def show_first?(show = false)
    show
  end

  def hello_world(text = "Hello World from @env", opts = {})
    text << opts.to_a * " " if opts.any?
    text
  end
end
