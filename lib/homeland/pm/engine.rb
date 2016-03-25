require "homeland"
require "homeland/engine"

module Homeland
  module Pm
    class Engine < ::Rails::Engine
      initializer "homeland.pm.i18n.load_path" do |app|
        app.config.i18n.load_path += Dir[File.expand_path('../../../locales/**/*.yml', __FILE__)]
      end

      initializer "homeland.pm.routes.append", before: :load_config_initializers do |app|
        Homeland::Engine.routes.append do
          resources :personal_messages, path: 'pm'
        end
      end
    end
  end
end
