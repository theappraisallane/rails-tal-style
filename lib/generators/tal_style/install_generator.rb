require 'rails/generators'
require 'rails/generators/base'

module TalStyle
  class InstallGenerator < Rails::Generators::Base
    def self.source_root
      @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
    end

    def create_root_reek_yml
      template "reek", ".reek", orce: true
    end

    def create_root_rubocop
      template "rubocop.yml", ".rubocop.yml", force: true
    end
  end
end

