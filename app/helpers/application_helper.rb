module ApplicationHelper
  def full_title(page_title)
    base_title = "Pressbal tour"
    if page_title.present?
      " #{page_title} | #{base_title}"
    else
      base_title
    end
  end
  def meta_keywords(page_keywords)
  base_keywords = "Pressbal tour"
    if page_keywords.present?
      " #{page_keywords}"
    else
      base_keywords
    end
  end
  def meta_description(page_description)
    base_description = "Pressbal tour"
    if page_description.present?
      " #{page_description}"
    else
      base_description
    end
  end
end
