# frozen_string_literal: true

describe 'Visit www.google.com' do
  let(:google_site) { 'https://www.google.com' }
  let(:id_terms_accept) { 'com.android.chrome:id/terms_accept' }
  let(:id_negative_button) { 'com.android.chrome:id/negative_button' }
  let(:url_bar) { 'com.android.chrome:id/url_bar' }

  it 'should create and visit www.google.com' do
    caps = android_caps
    @driver = Appium::Driver.new(caps, true).start_driver
    @driver.find_element(:id, id_terms_accept).click
    @driver.find_element(:id, id_negative_button).click
    @driver.get(google_site)
    @page_title = @driver.find_element(:id, url_bar).text
    expect(@page_title).to eql 'https://www.google.com'
    @driver.quit
  end
end
