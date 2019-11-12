# frozen_string_literal: true

module FluxBase
  module ApplicationHelper
    # Generates pretty printed JSON for obj.
    def display_json(obj)
      JSON.pretty_generate(obj)
    rescue JSON::GeneratorError
      JSON.pretty_generate(JSON.parse(obj.to_json))
    end
  end
end
