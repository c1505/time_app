class AddEstimatedTimeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :estimated_time, :float, :null => false, :default => 0
  end
end
