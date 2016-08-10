require "movies/version"
require "mechanize"

module Movies
  # Your code goes here...
  class Search
    def film_links
      page.links_with(class: 'film-name')
    end

    def films
      film_links.map(&:text)
    end

    def agent
      @agent ||= Mechanize.new
    end

    def page
      @page ||= agent.get("http://www.123phim.vn/phim/")
    end
  end
end
