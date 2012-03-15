require 'spec_helper'

describe 'HomePage' do
  
  it 'should have a div#main container' do
    visit '/'
    page.should have_xpath("//div[@id = 'main']")
  end
  
end
