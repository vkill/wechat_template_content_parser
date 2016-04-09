require "wechat_template_content_parser/version"

module WechatTemplateContentParser

  # Public: Parse the wechat template content.
  #
  # content   - The String to be parsed.
  #
  # Examples
  #
  #   parse("The time: {{time.DATA}}\nThe location: {{location.DATA}}")
  #   # => [:time, :location]
  #
  # Returns the data Array.
  def self.parse(content)
    content.to_s.scan(/\{[ ]*\{([\w]+).DATA\}[ ]*\}/).map{|x| x[0].to_s.to_sym}
  end

  # Public: Fill the wechat template content.
  #
  # content   - The String to be filled.
  # data_hash - The data Hash
  #
  # Examples
  #
  #   fill("The time: {{time.DATA}}\nThe location: {{location.DATA}}", {time: 'Jan 1 , 2016', location: 'Square'})
  #   # => "The time: Jan 1 , 2016\nThe location: Square"
  #
  # Returns the filled content String.
  def self.fill(content, data_hash)
    str = content.dup
    data_hash.each do |k, v|
      str.sub! /\{[ ]*\{(#{k}).DATA\}[ ]*\}/, v
    end
    str
  end

end
