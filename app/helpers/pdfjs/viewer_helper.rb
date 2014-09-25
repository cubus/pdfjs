module Pdfjs
  module ViewerHelper

    ALL = %i(
      sidebar
      search
      previous_next
      current_page
      zoom_buttons
      zoom_select
      fullscreen
      open
      print
      download
      bookmark
      tools)

    DEFAULT = %i(
      previous_next
      zoom_buttons
      zoom_select
      fullscreen
      download)

    def pdf_viewer(filename, options = {})
      toolbar = options.fetch(:toolbar, :default)
      hidden_class = options.fetch(:hidden_class, 'collapse')

      toolbar = toolbar.to_s.upcase.safe_constantize ||
        DEFAULT unless toolbar.is_a?(Array)

      show_item = -> (item) { toolbar.member?(item) ? '' : hidden_class }

      ActionController::Base.new.render_to_string 'pdfjs/toolbar', locals: {
        filename: filename,
        show_item: show_item }
    end
  end
end
