source ENV['GEM_SOURCE'] || "https://rubygems.org"

# special dependencies for Ruby 1.8
# since there are still several OSes with it
if RUBY_VERSION =~ /^1\.8\./
  gem 'rspec-core', '~> 3.1.7'
  gem 'nokogiri', '~> 1.5.0'
end

gem 'puppet', ENV.key?('PUPPET_VERSION') ? ENV['PUPPET_VERSION'].to_s : '>= 2.7'
gem 'rspec-puppet', '~> 2.0'
gem 'puppetlabs_spec_helper', '>= 0.1.0'
gem 'puppet-lint', '>= 2'
gem 'facter', '>= 1.7.0'
gem 'metadata-json-lint'

gem 'puppet-lint-strict_indent-check'
