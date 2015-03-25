class RenameTypeToActivityInActivities < ActiveRecord::Migration
  def change
    rename_column :activities, :type, :activity
  end
end
