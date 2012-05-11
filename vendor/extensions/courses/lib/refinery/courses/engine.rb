module Refinery
  module Courses
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Courses

      engine_name :refinery_courses

      initializer "register refinerycms_courses plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "courses"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.courses_admin_courses_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/courses/course',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Courses)
      end
    end
  end
end
