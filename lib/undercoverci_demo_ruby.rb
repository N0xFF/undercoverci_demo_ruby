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
