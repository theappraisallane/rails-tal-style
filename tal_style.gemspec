lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = %q{tal_style}
  spec.version       = '0.1.0'
  spec.authors       = ['The Appraisal Lane', 'Esteban Bordon']
  spec.email         = ['developers@theappraisallane.com', 'ebordon@gmail.com']

  spec.summary       = %q{Style guides to develop TAL applications in rails}
  spec.description   = 'Configuration files and other snippets to help you apply standards across multiple projects'
  spec.homepage      = 'https://github.com/theappraisallane/tal_style'
  spec.license       = 'MIT'

  spec.post_install_message = <<-ENDOFMESSAGE
TAL styles were installed!
  ENDOFMESSAGE

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.63', '< 0.64'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 11.0'
end
