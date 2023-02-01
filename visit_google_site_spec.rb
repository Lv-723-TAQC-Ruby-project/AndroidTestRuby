# frozen_string_literal: true

describe 'Visit www.google.com' do
  let(:google_site) { 'https://www.google.com' }
  let(:id_terms_accept) { 'com.android.chrome:id/terms_accept' }
  let(:id_negative_button) { 'com.android.chrome:id/negative_button' }
  let(:id_url_bar) { 'com.android.chrome:id/url_bar' }
  let(:xpath_logo) do
    '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View[1]/android.widget.Image'
  end



  it 'should visit www.google.com' do
    caps = android_caps
    @driver = Appium::Driver.new(caps, true).start_driver
    @driver.find_element(:id, id_terms_accept).click
    @driver.find_element(:id, id_negative_button).click
    @driver.get(google_site)
    @page_logo = @driver.find_element(:xpath, xpath_logo).text
    expect(@page_logo).to eql 'Google'
    @driver.quit
  end
end
