module DefaultPageContent
    extend ActiveSupport::Concern
    
    included do
        before_action :set_page_default
    end

    def set_page_default
        @page_title ="my portfolio"
        @seo_keywords ="jordan"
    end
end
