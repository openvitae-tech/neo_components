# frozen_string_literal: true

module NeoComponents
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper NeoComponents::Engine.routes.url_helpers
  end
end
