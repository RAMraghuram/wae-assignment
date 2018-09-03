# class GooglenewsController < ApplicationController
#   before_action :set_project, only: [:show, :edit, :update, :destroy]
#   def ques2
#     require 'open-uri'
#     require 'nokogiri'
#     # doc =open("https://news.google.com")
#     # doc = open(URI.parse("https://news.google.com"))
#     # Nokogiri::HTML.parse(open(https://news.google.com))
#
#     # proxy_host = '192.41.170.23'
#     # proxy_port = '3128'
#     # proxy_user = ''
#     # proxy_pass = ''
#
#     @field = params[:field]
#     news = ''
#     if @field == 'headlines'
#       news = 'https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRFZxYUdjU0FtVnVHZ0pWVXlnQVAB?hl=en-US&gl=US&ceid=US%3Aen'
#     else @field == 'world'
#       news = 'https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRGx1YlY4U0FtVnVHZ0pWVXlnQVAB?hl=en-US&gl=US&ceid=US%3Aen'
#
#     end
#
#     page = open(news)
#       # , proxy:  URI.parse("http://192.41.170.23:3128"))
#
#     io = Nokogiri::HTML::Document.parse(page)
#
#     wholepage = io.css('div.NiLAwe.gAl5If.jVwmLb.Oc0wGc.R7GTQ.keNKEd.j7vNaf.nID9nc div.xrnccd.F6Welf.R7GTQ.keNKEd.j7vNaf')
#
#     news_items_size = wholepage.size
#
#     @ext_arr = Array.new(news_items_size) { Hash.new }
#     num = 0
#     google_news_url = 'https://news.google.com'
#     for item in whoClassNamelepage
#
#       title = item.css('article h3 span')
#       link  = item.css('article h3 a').attr('href')
#       pic   = item.css('figure img').attr('src')
#       #---- Sub articles ---
#       sub_news_title =  item.css('div.SbNwzf article div.mEaVNd h4')
#       sub_news_link =  item.css('div.SbNwzf article')
#       sub_title  = sub_news_title.css('span')
#       sub_link   = sub_news_title.css('a')
#       @ext_arr[num]['title']    = title.text
#       @ext_arr[num]['news_pic']  = pic
#
#       link[0] = ''
#       @ext_arr[num]['news_link'] = google_news_url+link
#       concat_sub_title = ''
#       concat_sub_link  = ''
#
#       for sub_title_item in sub_title
# concat_sub_title = '|'+sub_title_item.text+concat_sub_title
# end
# for sub_item_href in sub_link
# sub_href = sub_item_href['href']
# sub_href[0] = ''
# concat_sub_link = '|'+google_news_url+sub_href+concat_sub_link
# end
#
# @ext_arr[num]['sub_news']   = concat_sub_title
# @ext_arr[num]['sub_links']  = concat_sub_link
# num=num+1
# end
#
# # render 'news'
# end
#
#   # end
# end



class GooglenewsController < ApplicationController
  def ques2
    require 'nokogiri'
    require 'open-uri'

    doc = Nokogiri::HTML(open('https://news.google.com'))
    entries = doc.css('.content')
    rate = entries.css('table').css('tr').css('td').text

    render template:'googlenews/ques2'
  end
end
