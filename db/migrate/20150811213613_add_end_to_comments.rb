class AddEndToComments < ActiveRecord::Migration
  def change
    add_column :comments, :end, :datetime
  end
end
