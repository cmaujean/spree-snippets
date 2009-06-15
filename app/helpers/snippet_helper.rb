require 'erb'

module SnippetHelper
  
  # override snippet/_display.html.erb to change 
  # the snippet wrapper
  # 
  # snippet can be something that responds to "slug" and "content", 
  # or a slug, or an id
  def render_snippet(snippet)
    
    # I hate stacks of elsifs. 
    # But I can't think of a better way 
    # to do this right now.   
    if snippet.respond_to?("content")  
      @snippet = snippet
    elsif snippet.kind_of?(Fixnum)
      @snippet = Snippet.find(snippet)
    elsif snippet.kind_of?(String)
      @snippet = Snippet.find_by_slug(snippet)
    else
      raise "Snippet not found"
    end 

    template = ERB.new File.read(File.expand_path(SPREE_ROOT + '/vendor/extensions/snippets/app/views/snippet/_display.html.erb'))
    template.result(binding)
  end
end
