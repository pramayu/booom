module ApplicationHelper
	def embed_svg filename, options={}
		file = File.read(Rails.root.join('app', 'assets', 'images', filename))
		doc = Nokogiri::HTML::DocumentFragment.parse file
		svg = doc.at_css 'svg'
		if options[:class].present?
			svg['class'] = options[:class]
		end
		doc.to_html.html_safe
	end

	def title(page_title)
		content_for :title, page_title.to_s
	end

	def meta_tag(tag, text)
		content_for :"meta_#{tag}", text
	end

	def yield_meta_tag(tag, default_text='')
		content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
	end

    def active_page(active_page)
      @active == active_page ? "active" : ""
    end
end
