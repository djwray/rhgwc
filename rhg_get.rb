
chapters = %w[
  class.html
  gc.html
  spec.html
  parser.html
  contextual.html
  syntree.html
  module.html
]
%{
  anyeval.html
  evaluator.html
  fin.html
  iterator.html
  load.html
  method.html
  minimum.html
  name.html
  object.html
  security.html
  thread.html
  variable.html
  yacc.html
}

require 'uri'
require 'open-uri'

chapters.each do |chapter|

  u = URI.escape("http://i.loveruby.net/ja/rhg/book/#{chapter}")

  #File.open("out/#{chapter}", 'w') do |f|
  File.open(chapter, 'w') do |f|
    f.write(open(
      "http://www.excite-webtl.jp/world/english/web/body/?wb_url=#{u}&wb_lp=JAEN"
    ).read)
  end
end

