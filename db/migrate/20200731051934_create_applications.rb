class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
    	t.belongs_to :account
      t.belongs_to :issue
      t.integer :requester_id
      t.timestamps
      
    end
  end
end
