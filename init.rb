Redmine::Plugin.register :redmine_project_selector do
  name 'Project Selector'
  author 'Florent Solt'
  description 'Smart project selector'
  version '0.0.1'
  url 'https://github.com/florentsolt/redmine_project_selector'
end

class ProjectSelectorViewListener < ::Redmine::Hook::ViewListener

  # Adds javascript and stylesheet tags
  def view_layouts_base_html_head(context)
    javascript_include_tag("select2.js", :plugin => "redmine_project_selector") +
    javascript_include_tag("project_selector.js", :plugin => "redmine_project_selector") +
    stylesheet_link_tag("select2.css", :plugin => "redmine_project_selector", :media => "screen") +
    "\n<style>#header .select2-container a {color: black}</style>".html_safe
  end

end
