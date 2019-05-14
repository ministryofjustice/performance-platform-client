
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "performance/platform/client/version"

Gem::Specification.new do |spec|
  spec.name          = "performance-platform-client"
  spec.version       = Performance::Platform::Client::VERSION
  spec.date          = Performance::Platform::Client::VERSION_RELEASED
  spec.authors       = ['Joel Sugarman', 'Ministry of Justice']
  spec.email         = ['joel.sugarman@digital.justice.gov.uk', 'tools@digital.justice.gov.uk']

  spec.summary       = 'Ruby client for the GDS performance platform API'
  spec.description   = "Ruby client for the Government Digital Service's performance platform API. A simple interface for transparent generation and submission of data to the GDS PP API."
  spec.homepage      = 'https://github.com/ministryofjustice/laa-fee-calculator-client'
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  # spec.add_development_dependency 'rb-readline' # may be required for another dependency??
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.50'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end
