module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'ColdBrew-Crew'

    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end
end
