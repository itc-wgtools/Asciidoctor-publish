lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "itc_gentools/version"

Gem::Specification.new do |spec|
  spec.name          = "itc_gentools"
  spec.version       = "0.3"
  spec.authors       = ["Brian Wood"]
  spec.email         = ["be.wood@samsung.com"]

  spec.summary       = "A tool to consistently generate output for iTCs using Asciidoctor."
  spec.description   = <<-EOF
  			itc-gentools is a set of scripts and configuration files to allow for consistent output of
  			files being generated by iTCs for the creation of cPPs and related documents.
			EOF
  spec.homepage      = "https://github.com/itc-wgtools/itc_gentools"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/itc-wgtools/itc_gentools"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir['lib/*'] + Dir['bin/*'] + Dir['lib/notice-block/*'] + Dir['lib/themes/*'] + %w(LICENSE Gemfile itc_gentools.gemspec)
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['.']

  spec.add_development_dependency "bundler", "~> 2.0"
  # spec.add_development_dependency "rake", "~> 10.0"
end
