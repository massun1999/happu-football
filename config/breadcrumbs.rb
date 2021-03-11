crumb :top do
  link "Home", root_path
end

crumb :thred do
  link "掲示板", threds_path
  parent :top
end

crumb :columns do
  link "コラム", columns_path
  parent :top
end

crumb :schedules do
  link "スケジュール", schedules_path
  parent :top
end

crumb :new_thred do
  link "掲示板投稿ページ", new_thred_path
  parent :thred
end

crumb :new_column do
  link "コラム投稿ページ", new_column_path
  parent :columns
end

crumb :new_schedule do
  link "スケジュール更新ページ", new_schedule_path
  parent :schedules
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