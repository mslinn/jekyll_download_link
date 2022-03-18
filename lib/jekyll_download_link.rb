# frozen_string_literal: true

require "jekyll"
require_relative "jekyll_download_link/version"
require "jekyll_plugin_logger"

module Jekyll
  # Generates an href to a file for the user to download from the site.
  # Also shows the file size in a human-readable format.
  class DownloadLink < Liquid::Tag
    # Constructor.
    # @param tag_name [String] is the name of the tag, which we already know.
    #   Contains the name of the file, relative to the website top level directory
    # @param text [Hash, String, Liquid::Tag::Parser] the arguments from the web page.
    # @param tokens [Liquid::ParseContext] tokenized command line
    # @return [void]
    def initialize(tag_name, text, tokens)
      super(tag_name, text, tokens)
      @filename = text.delete('"').delete("'").strip
    end

    # Method prescribed by the Jekyll plugin lifecycle.
    # @return [String]
    def render(context)
      source = context.registers[:site].config["source"]
      file_fq = File.join(source, @filename)
      abort "Error: '#{file_fq}' not found. See the link tag in" unless File.exist?(file_fq)

      "<a href='/#{@filename}'><code>#{@filename}</code></a> (#{as_size(File.size(file_fq))})"
    end

    def as_size(s)
      units = %w(B KB MB GB TB)

      size, unit = units.reduce(s.to_f) do |(fsize, _), utype|
        fsize > 512 ? [fsize / 1024, utype] : (break [fsize, utype])
      end

      "#{size > 9 || size.modulo(1) < 0.1 ? "%d" : "%.1f"} %s" % [size, unit]
    end
  end
end

Liquid::Template.register_tag("download_link", Jekyll::DownloadLink)
Jekyll.info "Loaded jekyll_download_link plugin."
