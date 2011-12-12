ActionController::Base.class_eval do
  include ActionView::Helpers::OutputSafetyHelper

  helper_method :render_snippet

  # snippet can be something that responds to "slug" and "content", 
  # or a slug, or an id
  def render_snippet(snippet)
    if snippet.respond_to?('content')  
      @snippet = snippet
    elsif snippet.kind_of?(Fixnum)
      @snippet = Snippet.find(snippet)
    elsif snippet.kind_of?(String)
      @snippet = Snippet.find_by_slug(snippet)
    else
      raise "Unable to handle snippet '#{snippet}'"
    end 

    if Spree::Config[:spree_snippets_raise_on_missing] == "t" && @snippet.nil? 
	    raise "Snippet '#{snippet}' not found"
    end
    return nil unless @snippet

    template = ERB.new File.read(File.expand_path(snippet_wrapper_absolute_path))
    raw template.result(binding)
  end

  private

  # Returns the location of the snippet wrapper, which is dependent on how spree is installed.
  def snippet_wrapper_absolute_path
    engine_path = File.join(File.dirname(__FILE__), '..', '..', '..')

    [Rails.root, engine_path].each do |root|
      absolute_path = File.join(root, snippet_wrapper_path)
      return absolute_path if File.exists?(absolute_path)
    end
    raise "Unable to find snippet wrapper using path '#{snippet_wrapper_path}'"
  end

  # Override the location returned by this method if you want your own snippet wrapper template
  def snippet_wrapper_path
    'app/views/snippets/_snippet.html.erb'
  end
end
