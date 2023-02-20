require 'jekyll_plugin_support'
require_relative 'jekyll_download_link/version'

module JekyllPluginDownloadLinkName
  PLUGIN_NAME = 'download_link'.freeze
end

# Generates an href to a file for the user to download from the site.
# Also shows the file size in a human-readable format.
class DownloadLink < JekyllSupport::JekyllTagNoArgParsing
  include JekyllDownloadLinkVersion

  def self.as_size(string)
    units = %w[B KB MB GB TB]

    size, unit = units.reduce(string.to_f) do |(fsize, _), utype|
      fsize > 512 ? [fsize / 1024, utype] : (break [fsize, utype])
    end

    fmt_str = "#{size > 9 || size.modulo(1) < 0.1 ? '%d' : '%.1f'} %s"
    format(fmt_str, size, unit)
  end

  def render_impl
    @filename = @argument_string.delete('"').delete("'").strip

    source = @config['source']
    file_fq = File.join(source, @filename)
    abort "Error: '#{file_fq}' not found. See the link tag in" unless File.exist?(file_fq)

    size_str = self.class.as_size(File.size(file_fq))
    "<a href='/#{@filename}'><code>#{@filename}</code></a> (#{size_str})"
  end

  JekyllPluginHelper.register(self, JekyllPluginDownloadLinkName::PLUGIN_NAME)
end
