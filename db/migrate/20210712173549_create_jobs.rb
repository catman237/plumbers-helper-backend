class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
