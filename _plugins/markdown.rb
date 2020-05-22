class Jekyll::Converters::Markdown::MyCustomProcessor
  def initialize(config)
  end

  def convert(content)
    escape_characters_in_string content
    content = content.gsub(/\n/, "\\n")
    %("#{content}")
  end

  def escape_characters_in_string(string)
    pattern = /(\'|\"|\.|\*|\/|\-|\\|\)|\$|\+|\(|\^|\?|\!|\~|\`)/
    string.gsub(pattern){|match|"\\"  + match}
  end
end
