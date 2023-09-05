lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prekin/version'

Gem::Specification.new do |spec|
  spec.name          = 'prekin'
  spec.version       = Prekin::VERSION
  spec.authors       = ['Osamu Takiya']
  spec.email         = ['takiya@toran.sakura.ne.jp']

  spec.summary       = "Judge whether the target day of month is 'PREMIUM FRIDAY' or not."
  spec.description   = "Return true or false when you specify the day of month (by Time class, Date class, DateTime class or String class). The criteria is whether the day is 'PREMIUM FRIDAY' or not. 'PREMIUM FRIDAY' is the last friday in month in Japan."
  spec.homepage      = 'https://github.com/nikukyugamer/prekin'
  spec.license       = 'MIT'
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec_junit_formatter'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
