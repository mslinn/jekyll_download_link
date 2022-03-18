# frozen_string_literal: true

require "jekyll"
require_relative "../lib/jekyll_download_link"

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = "random"
end
