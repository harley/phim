require "movies/version"
require 'mechanize'

module Movies
  class Search
    def film_links
      page.links_with(class: 'film-name')
    end

    def films
      film_links.map(&:text)
    end

    def agent
      Mechanize.new
    end

    def page
      agent.get("http://www.123phim.vn/phim")
    end
  end
end
