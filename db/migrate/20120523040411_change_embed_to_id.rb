class ChangeEmbedToId < ActiveRecord::Migration
  def up
    add_column :refinery_videos, :youtube_id, :string
  end

  def down
    remove_column :refinery_videos, :youtube_id
  end
end
