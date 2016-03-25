require 'rails/generators'
require 'rails/generators/active_record'

module Homeland
  module Pm
    module Generators
      class InstallGenerator < ActiveRecord::Generators::Base
        desc "Create Homeland-Pm's base files"
        argument :name, type: :string, default: 'homeland_pm'
        source_root File.expand_path("../templates", __FILE__)

        def copy_homeland_pm_migration
          migration_template "migration.rb", "db/migrate/homeland_pm_create_pms.rb", migration_version: migration_version
        end
        
        def rails5?
          Rails.version.start_with? '5'
        end
        
        def migration_version
          if rails5?
            "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
          end
        end
      end
    end
  end
end
