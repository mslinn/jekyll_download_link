require 'jekyll_plugin_support'
require_relative '../lib/jekyll_download_link'

RSpec.describe(DownloadLink) do
  let(:config) { instance_double(Configuration) }
  let(:context) do
    context_ = instance_double(Liquid::Context)
    context_.config = config
    context_
  end

  it 'generates proper size comment' do
    expect(described_class.as_size('123')).to             eq('123 B')
    expect(described_class.as_size('123456')).to          eq('120 KB')
    expect(described_class.as_size('123456789')).to       eq('117 MB')
    expect(described_class.as_size('123456789012')).to    eq('114 GB')
    expect(described_class.as_size('123456789012345')).to eq('112 TB')
  end
end
