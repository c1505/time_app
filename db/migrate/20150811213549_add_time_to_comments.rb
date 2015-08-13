class AddTimeToComments < ActiveRecord::Migration
  def change
    add_column :comments, :start, :datetime
  end
end
