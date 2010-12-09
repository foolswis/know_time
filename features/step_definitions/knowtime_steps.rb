#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

#---
# KnowTime code below
# Copyright (c) 2010 Lloyd Budd Dewolf
#---

Given /^the application is not running$/ do
end

Given /^I am not yet recording time$/ do
  know_time = KnowTime::KnowTime.new(output)
  know_time.start
end

When /^I start the application$/ do
  know_time = KnowTime::KnowTime.new(output)
  know_time.start
end

When /^I indicate to mark the start of recording$/ do
  know_time.start_stopwatch
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end
