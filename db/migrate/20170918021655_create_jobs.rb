class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :compny
      t.string :url

      t.timestamps
    end
  end
end
