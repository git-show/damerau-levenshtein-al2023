# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "damerau-levenshtein/version"

Gem::Specification.new do |s|
  s.required_ruby_version = ">= 3.0"
  s.name = "damerau-levenshtein-al2023"
  s.version = DamerauLevenshtein::VERSION
  s.homepage = "https://github.com/GlobalNamesArchitecture/damerau-levenshtein"
  s.authors = ["Dmitry Mozzherin"]
  s.email = "dmozzherin@gmail.com"
  s.license = "MIT"
  s.summary = "Calculation of editing distance for 2 strings " \
              "using Levenshtein or Damerau-Levenshtein algorithms"
  s.description = "This gem implements pure Levenshtein algorithm, " \
                  "Damerau modification (where 2 character " \
                  "transposition counts as 1 edit distance). It also " \
                  "includes Boehmer & Rees 2008 modification, " \
                  "to handle transposition in blocks with more than " \
                  "2 characters (Boehmer & Rees 2008)."
  s.files = `git ls-files -z`.split("\x0").
            reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.extensions = ["ext/damerau_levenshtein/extconf.rb"]
  s.require_paths = ["lib", "lib/damerau-levenshtein"]

  s.add_development_dependency "bundler", "~> 2.1"
  s.add_development_dependency "byebug", "~> 11.0"
  s.add_development_dependency "coveralls", "~> 0.8"
  s.add_development_dependency "cucumber", "~> 4.1"
  s.add_development_dependency "rake", "~> 13.0"
  s.add_development_dependency "rake-compiler", "~> 1.2.7"
  s.add_development_dependency "rspec", "~> 3.9"
  s.add_development_dependency "rubocop", "~> 0.88"
  s.add_development_dependency "ruby-prof", "~> 1.4"
  s.add_development_dependency "shoulda", "~> 4.0"
  s.add_development_dependency "solargraph", "~> 0.39"
end
