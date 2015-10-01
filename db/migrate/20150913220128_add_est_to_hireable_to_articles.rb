class AddEstToHireableToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :est_to_hireable, :float, :null => false, :default => 0
  end
end
