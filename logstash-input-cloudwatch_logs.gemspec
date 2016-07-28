Gem::Specification.new do |s|

  s.name            = 'logstash-input-cloudwatch_logs'
  s.version         = '0.9.2'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = 'Stream events from CloudWatch Logs.'
  s.description     = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program'
  s.authors         = ['Luke Waite']
  s.email           = 'lwaite@gmail.com'
  s.homepage        = ''
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'input' }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '< 2.4'
  s.add_runtime_dependency 'logstash-mixin-aws', '>= 2.0.4', '<= 4.0.0'
  s.add_runtime_dependency 'stud', '~> 0.0.22'
  s.add_runtime_dependency 'aws-sdk', '~> 2.1.0'
  s.add_runtime_dependency 'aws-sdk-v1'

  s.add_development_dependency 'logstash-devutils', '>= 0.0.16'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'logstash-codec-json'
end

