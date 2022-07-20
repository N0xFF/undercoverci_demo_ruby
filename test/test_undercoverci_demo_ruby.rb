# frozen_string_literal: true

require "test_helper"

class TestUndercoverciDemoRuby < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::UndercoverciDemoRuby::VERSION
  end

  def test_one_covered
    assert ::UndercoverciDemoRuby::One.covered
  end

  def test_one_uncovered
    assert ::UndercoverciDemoRuby::One.uncovered
  end

  def test_two_covered
    assert ::UndercoverciDemoRuby::Two.covered
  end

  def test_two_uncovered
    assert ::UndercoverciDemoRuby::Two.uncovered
  end
end
