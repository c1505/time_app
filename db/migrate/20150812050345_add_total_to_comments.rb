class AddTotalToComments < ActiveRecord::Migration
  def change
    add_column :comments, :total, :float
  end
end
