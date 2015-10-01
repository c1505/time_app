class AddCurrentPaceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :current_pace, :float, :null => false, :default => 0
  end
end
