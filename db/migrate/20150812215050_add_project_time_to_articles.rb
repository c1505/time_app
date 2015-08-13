class AddProjectTimeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :project_time, :float
  end
end
