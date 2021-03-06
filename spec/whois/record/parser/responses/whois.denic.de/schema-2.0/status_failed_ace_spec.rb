# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/schema-2.0/status_failed_ace.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.denic.de.rb'

describe Whois::Record::Parser::WhoisDenicDe, "status_failed_ace.expected" do

  before(:each) do
    file = fixture("responses", "whois.denic.de/schema-2.0/status_failed_ace.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
end
