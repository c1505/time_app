class AddProjectTimeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :project_time, :float, :null => false, :default => 0
  end
end
