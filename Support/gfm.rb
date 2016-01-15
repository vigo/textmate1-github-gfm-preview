require 'rubygems'
require 'redcarpet'
require 'pygments'

class HTMLwithPygments < Redcarpet::Render::HTML
  def block_code(code, language)
    language ||= 'text'
    Pygments.highlight(code, :lexer => language)
  rescue
    Pygments.highlight(code, :lexer => 'text')
  end
end

def markdown(text)
  renderer = HTMLwithPygments.new(:hard_wrap => true, :filter_html => true)
  options = {
    :autolink            => true,
    :space_after_headers => true,
    :fenced_code_blocks  => true,
    :tables              => true,
    :strikethrough       => true,
    :smart               => true,
    :hard_wrap           => true,
    :safelink            => true,
    :no_intraemphasis    => true,
  }
  Redcarpet::Markdown.new(renderer, options).render(text)
end

css_file_github = "#{ENV['TM_BUNDLE_SUPPORT']}/css/markdown-github.css"
css_file_syntax = "#{ENV['TM_BUNDLE_SUPPORT']}/css/syntax-hightlight-github.css"

html_header = [
  '<html>', '<head>', '<title>', ENV['TM_FILENAME'], '</title>',
  "<link rel=\"stylesheet\" href=\"file://#{css_file_github}\">",
  "<link rel=\"stylesheet\" href=\"file://#{css_file_syntax}\">",
  '</head>', '<body>', '<div class="github-gfm">',
]
html_footer = [
  '</div>', 
  "\n<script>window.location.hash = \"scroll_here\";</script>",
  '</body>', '</html>',
]

md_lines = []

File.readlines(ENV["TM_FILEPATH"]).each_with_index do |line, i|
  ii = i + 1
  output = line.chomp
  if ii == ENV["TM_LINE_NUMBER"].to_i
    output = "#{output}@@SCROLL_HERE@@"
  end
  md_lines << output
end

html = markdown(md_lines.join("\n"))

lines = html.split("\n")
lines.each_with_index do |s, i|
  if s =~ /@@SCROLL_HERE@@/
    lines[i] = '<a id="scroll_here">' + s.sub('@@SCROLL_HERE@@', "")
  end
end

puts html_header.join("")
puts lines.join("\n")
puts html_footer.join("")

