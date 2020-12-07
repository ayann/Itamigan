require_relative 'lib/itamigan/version'

Gem::Specification.new do |spec|
  spec.name          = "itamigan"
  spec.version       = Itamigan::VERSION
  spec.authors       = ["Armand NIAMPA"]
  spec.email         = ["armandniampa.developer@gmail.com"]

  spec.summary       = %q{Rails generator for contract and service object that use dry.rb gems.}
  spec.description   = %q{Rails service, contract generator that use dry.rb gems such as dry-validation and dry-transaction.}
  spec.homepage      = "https://github.com/ayann/Itamigan."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ayann/Itamigan"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.4"
end
