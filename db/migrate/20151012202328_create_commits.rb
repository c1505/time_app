class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|

      t.timestamps null: false
    end
  end
end
