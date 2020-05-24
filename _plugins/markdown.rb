require 'json'

class Jekyll::Converters::Markdown::MyCustomProcessor
  def initialize(config)
  end

  def convert(content)
    escape_characters_in_string content
    data = {:content => content}
    data.to_json
  end

  def escape_characters_in_string(string)
    pattern = /(\'|\"|\.|\*|\/|\-|\\|\)|\$|\+|\(|\^|\?|\!|\~|\`)/
    string.gsub(pattern){|match|"\\"  + match}
  end
end
