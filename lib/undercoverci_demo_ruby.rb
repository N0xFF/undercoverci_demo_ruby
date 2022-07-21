# frozen_string_literal: true

require_relative "undercoverci_demo_ruby/version"

module UndercoverciDemoRuby
  class Error < StandardError; end

  class One
    def self.covered
      "covered"
    end

    def self.uncovered
      "uncovered"
    end

    def self.uncovered2
      "uncovered2"
    end

    def self.uncovered_not_on_master
      "I am a new method and have no tests"
    end
  end

  class Two
    def self.covered
      "covered"
    end

    def self.uncovered
      "uncovered"
    end
  end
end
