# frozen_string_literal: true

Rails.application.routes.draw do
  mount FluxBase::Engine => '/flux_base'
end
