lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "multi/session/store/version"

Gem::Specification.new do |spec|
  spec.name          = "multi-session-store"
  spec.version       = Multi::Session::Store::VERSION
  spec.authors       = ["Emarsys Smart Insight developers"]
  spec.email         = ["smart-insight-dev@emarsys.com"]

  spec.summary       = %q{Multi Session Store for Rails applications}
  spec.description   = %q{This gem provides a means to support multiple sessions across different tabs in the same browser window.}
  spec.homepage      = "https://github.com/emartech/multi-session-store"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/emartech/multi-session-store.git"
  spec.metadata["changelog_uri"] = "https://github.com/emartech/multi-session-store/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
