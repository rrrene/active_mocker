require 'rspec'
$:.unshift File.expand_path('../../../../../lib/active_mocker/mock', __FILE__)
require 'queries'
require 'collection'
require 'association'
require 'has_many'
require_relative 'has_many_shared_example'

describe ActiveMocker::Mock::HasMany do
  it_behaves_like 'HasMany'
end


