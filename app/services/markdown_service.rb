require 'rouge/plugins/redcarpet'

class MarkdownService
  class HTMLWithRouge < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet # yep, that's it.
  end

  def initialize
    @markdown = Redcarpet::Markdown.new(HTMLWithRouge, fenced_code_blocks: true)
  end

  def render(text)
    @markdown.render(text)
  end

  def imageRender(url,width,height)
    @markdown.render("<img src='#{url}' alt='Alt' height='#{height}' width='#{width}'>")

  end
end