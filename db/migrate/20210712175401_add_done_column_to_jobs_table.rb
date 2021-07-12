class AddDoneColumnToJobsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :done, :boolean
  end
end
