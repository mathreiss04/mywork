class AddCommentsToTimetracking < ActiveRecord::Migration[5.2]
  def change
    add_column :timetrackings, :comments, :text
  end
end
