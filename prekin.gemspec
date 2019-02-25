
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "prekin/version"

Gem::Specification.new do |spec|
  spec.name          = "prekin"
  spec.version       = Prekin::VERSION
  spec.authors       = ["Osamu Takiya"]
  spec.email         = ["takiya@toran.sakura.ne.jp"]

  spec.summary       = %q{Judge whether the target day of month is 'PREMIUM FRIDAY' or not.}
  spec.description   = %q{Return true or false when you specify the day of month (by Time Class, Date Class or DateTime Class). The criteria is whether the day is 'PREMIUM FRIDAY' or not. 'PREMIUM FRIDAY' is the last friday in month in Japan.}
  spec.homepage      = "https://github.com/corselia/prekin"
  spec.license       = "MIT"

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

  spec.add_development_dependency "rubocop" # バージョン指定
  spec.add_development_dependency "pry" # バージョン指定
end
