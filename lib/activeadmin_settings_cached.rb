# frozen_string_literal: true

require 'activeadmin_settings_cached/engine'
require 'activeadmin_settings_cached/dsl'
require 'activeadmin_settings_cached/options'
require 'activeadmin_settings_cached/model'
require 'activeadmin_settings_cached/coercions'

module ActiveadminSettingsCached
  class Configuration
    attr_accessor :model_name, :display

    def model_name
      (@model_name ||= 'Setting').constantize
    end

    def display
      (@display ||= {}).with_indifferent_access
    end
  end

  class << self
    def config
      @config ||= Configuration.new
    end

    def configure
      yield config
    end
  end
end

::ActiveAdmin::DSL.send(:include, ::ActiveadminSettingsCached::DSL)