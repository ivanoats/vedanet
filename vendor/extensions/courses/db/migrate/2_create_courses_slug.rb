class CreateCoursesSlug < ActiveRecord::Migration

  def change
    add_column :refinery_courses, :slug, :string
    add_index  :refinery_courses, :slug, unique: true
  end

end
