require './lib/multi_delegator'

Gem::Specification.new do |s|
  s.name    = "multi-delegator"
  s.version = MultiDelegator::VERSION
  s.summary = "Delegate method calls to multiple objects"
  s.license = 'MIT'

  s.authors     = ["Gabe Smith"]
  s.email       = ["sgt.floydpepper@gmail.com"]
  s.date        = Time.now.strftime "%Y-%m-%d"
  s.homepage    = "https://github.com/sgtFloyd/multi_delegator"
  s.description = "Delegate method calls to multiple objects"

  s.require_paths = ["lib"]
  s.files         = Dir['lib/**/*.rb']
end
