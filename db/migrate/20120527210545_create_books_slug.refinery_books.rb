# This migration comes from refinery_books (originally 2)
class CreateBooksSlug < ActiveRecord::Migration

  def change
    add_column :refinery_books, :slug, :string
    add_index  :refinery_books, :slug, unique: true
  end

end
