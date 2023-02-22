# frozen_string_literal: true

require 'rails-settings-cached'
require 'active_admin'

module ActiveadminSettingsCached
  class Engine < Rails::Engine
    isolate_namespace ActiveadminSettingsCached
  end
end
