class CrawlController < ApplicationController
  def index
    url = params[:url]
    hostname = URI("http://#{url}").host

    document = Nokogiri::HTML(HTTParty.get("http://#{url}"))

    title = document.css("title").first.text
    image = document.css("img").first.attr("src") rescue nil
    paragraph = document.css("p").first.text rescue nil

    image.insert 0, "http://#{hostname}" unless image =~ /^http(s)?/

    render json: {
      title: title,
      image: image,
      paragraph: paragraph
    }
  end
end
