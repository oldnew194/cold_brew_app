module ApplicationHelper
  def page_title(page_title = '', admin = false)
    base_title = if admin
                  'Cold B/Crew(管理画面)'
                else
                  'Cold B/Crew'
                end

    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end

  def active_if(path)
    path == controller_path ? 'active' : ''
  end
end
