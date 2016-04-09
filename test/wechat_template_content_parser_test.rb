require 'test_helper'

class WechatTemplateContentParserTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::WechatTemplateContentParser::VERSION
  end

  def test_parse
    expected = [:time, :location]

    content = "The time: {{time.DATA}}\nThe location: {{location.DATA}}"
    data_array = WechatTemplateContentParser.parse(content)
    assert_equal expected, data_array
  end

  def test_fill
    expected = "The time: Jan 1 , 2016\nThe location: Square"

    content = "The time: {{time.DATA}}\nThe location: {{location.DATA}}"
    data_hash = {time: 'Jan 1 , 2016', location: 'Square'}
    filled_content = WechatTemplateContentParser.fill(content, data_hash)
    assert_equal expected, filled_content
  end

end
