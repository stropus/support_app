class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id, null: false
      t.string :text, null: false
      t.integer :status, default: Request::PENDING_STATUS, null: false

      t.timestamps null: false
    end

    add_index :requests, :user_id, :unique => true
  end
end
