module PageTitleHelper

  def site_title title
    @site_title = title
    content_tag :title, [@site_title, @page_title].join(" - ")
  end
  
  def title title 
    @page_title = title.class == String ? title : I18n.translate(title)
    content_tag :h1, @page_title
  end

end
