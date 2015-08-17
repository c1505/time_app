class AddSoundCountToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :sound_count, :float
  end
end
