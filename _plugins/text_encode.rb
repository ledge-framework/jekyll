# _plugins/text_encode.rb
require 'liquid'
require 'json'

module TextFilter
  def text_encode(content)
    data = {:content => content}
    data.to_json
  end
end

Liquid::Template.register_filter(TextFilter)
