module ApplicationHelper
  def page_title(title = "")
    base_ttitle = "I'm a NOT PERFECT AI"
    if title.empty?
      base_ttitle
    else
       "#{title} | #{base_ttitle}"
    end
  end
end
