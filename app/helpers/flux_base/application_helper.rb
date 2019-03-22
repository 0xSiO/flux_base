module FluxBase
  module ApplicationHelper
    def application_includes
      styles = stylesheet_link_tag('application', media: 'all', 'data-turbolinks-track': 'reload')
      js = javascript_include_tag('application', 'data-turbolinks-track': 'reload')
      styles.concat(js)
    end

    def controller_specific_includes
      unless controller_name == 'application'
        styles = stylesheet_link_tag params[:controller], 'data-turbolinks-track': 'reload'
        js = javascript_include_tag params[:controller], 'data-turbolinks-track': 'reload'
        styles.concat(js)
      end
    end

    # Generates pretty printed JSON for obj.
    def display_json(obj)
      JSON.pretty_generate(obj)
    rescue JSON::GeneratorError
      JSON.pretty_generate(JSON.parse(obj.to_json))
    end
  end
end
