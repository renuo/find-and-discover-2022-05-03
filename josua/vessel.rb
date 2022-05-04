require "json"
require "vessel"

class RenuoCompetences < Vessel::Cargo
  domain "renuo.ch"
  start_urls "https://www.renuo.ch/en/blog"

  def parse
    css("a.blog-link").each do |link|
      yield({
        url: link.attribute(:href),
        #text: link.at_css("span.text").text
      })
    end

    if next_page = at_css('a[href~="page"]')
      url = absolute_url(next_page.attribute(:href))
      yield request(url: url, handler: :parse)
    end
  end
end

links = []
RenuoCompetences.run { |l| links << l }
puts JSON.pretty_generate(links)
