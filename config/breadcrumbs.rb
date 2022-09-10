crumb :root do
  link "Home", root_path
end

crumb :user_new do
  link "ユーザー登録", new_user_path
  parent :root
end

crumb :user_show do |user|
  link "#{user.name}さんのページ", user_path(current_user)
  parent :root
end

crumb :user_profile do |user|
  link "プロフィール編集"
  parent :user_show, user
end

crumb :user_edit do |user|
  link "ユーザー編集"
  parent :user_show, user
end

crumb :area_index do
  link "エリアから探す"
  parent :root
end

crumb :area_show do |area|
  link "#{area.name}", area_path(area)
  parent :area_index
end

crumb :feature_index do
  link "店の特徴から探す"
  parent :root
end

crumb :feature_show do |feature|
  link "#{feature.feature_type}", feature_path(feature)
  parent :feature_index
end

crumb :store_index do
  link "店名から探す", stores_path
  parent :root
end

crumb :store_search do |q|
  link "店名から探す", stores_path(q)
  parent :root
end

crumb :store_show do |store|
  link store.name, store_path(store)
  parent :store_index
end

crumb :article_index do |store|
  link "記事一覧", store_articles_path
  parent :store_show, store
end

crumb :article_new do |store|
  link "記事作成", new_store_article_path
  parent :store_show, store
end

crumb :article_show do |store|
  link "記事の詳細"
  parent :article_index, store
end

crumb :article_search do |search_article|
  link "投稿記事から探す", search_store_articles_path
  parent :root
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).