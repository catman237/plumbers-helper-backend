class ChangeColumnOnToolsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :tools, :name, :tool_name
  end
end
