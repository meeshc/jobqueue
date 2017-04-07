class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :job_id
      t.string :url
      t.string :status
      t.string :result

      t.timestamps
    end
  end
end
