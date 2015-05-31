require ::File.expand_path('../spec_helper',  __FILE__)
# require 'spec_helper'
require 'news_feed_api'


describe NewsFeedAPI do
  let(:app) do
    Rack::Builder.app do
      use Rack::Lint
      run NewsFeedAPI.new
    end
  end

  before { get '/' }

  it 'should send the correct response' do
    expect(last_response.body).to eq('OK')
  end
end
