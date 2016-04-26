require "phim/version"
require 'mechanize'

module Phim
  # Your code goes here...
  class Search
    PREFIX = "http://www.123phim.vn/"
    attr_accessor :url, :agent

    def initialize(type)
      self.url = "#{PREFIX}phim/"
      self.agent = Mechanize.new
    end

    def results
      return @results if @results
      page = agent.get url
      @results = page.search('a.film-name')
    end

    def titles
      results.map(&:text)
    end
  end
end
