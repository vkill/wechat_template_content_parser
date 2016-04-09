# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wechat_template_content_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "wechat_template_content_parser"
  spec.version       = WechatTemplateContentParser::VERSION
  spec.authors       = ["vkill"]
  spec.email         = ["vkill.net@gmail.com"]

  spec.summary       = %q{Parse and fill wechat template content.}
  spec.description   = %q{Parse and fill wechat template content.}
  spec.homepage      = "https://github.com/vkill/wechat_template_content_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
