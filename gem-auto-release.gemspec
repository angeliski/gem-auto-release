require_relative 'lib/gem/auto/release/version'

Gem::Specification.new do |spec|
  spec.name          = "gem-auto-release"
  spec.version       = Gem::Auto::Release::VERSION
  spec.authors       = ["Rogerio Angeliski"]
  spec.email         = ["rogerio.angeliski@resultadosdigitais.com.br"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/angeliski/gem-auto-release"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/angeliski/gem-auto-release."
  spec.metadata["changelog_uri"] = "https://github.com/angeliski/gem-auto-release/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
