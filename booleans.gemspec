# frozen_string_literal: true

require_relative "lib/booleans/version"

Gem::Specification.new do |spec|
  spec.name = "booleans"
  spec.version = Booleans::VERSION
  spec.authors = ["Mateusz Drewniak"]
  spec.email = ["matmg24@gmail.com"]

  spec.summary = "Convert Ruby values to true or false in a convenient and reliable manner."
  spec.description = <<~TEXT
    This gem adds a new method called `Boolean`, analogous to builtins like `Integer` or `String`, which converts
    a Ruby value to either `true` or `false` based on its truthiness.

    It also has optional core extensions that add a `to_bool` method to all Ruby objects and allow you to check if a value is boolean with `val.is_a?(Boolean)`.
  TEXT
  spec.homepage = "https://github.com/Verseth/ruby-booleans"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "sorbet-runtime", ">= 0.5"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
