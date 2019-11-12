# frozen_string_literal: true

module FluxBase
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
