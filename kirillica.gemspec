
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "kirillica"
  spec.version       = '0.1.1'
  spec.authors       = ["Vlasov Viktor"]
  spec.email         = ["vlasv90@gmail.com"]

  spec.summary       = "Different standarts of kirillica transliteration"
  spec.description   = "Implement different standarts of kirillica transliteration"
  spec.homepage      = "https://github.com/Fcukit/kirillica"
  spec.license       = "MIT"
  spec.files = ["lib/kirillica.rb", "lib/kirillica/gost_2000.rb", "lib/kirillica/usa_government.rb", "lib/kirillica/iso_9.rb", "lib/kirillica/passport.rb"]

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  # spec.require_paths = ["lib"]
  #
  # spec.add_development_dependency "bundler", "~> 2.0"
  # spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "rspec", "~> 3.0"
  # spec.add_development_dependency "rails"
end
