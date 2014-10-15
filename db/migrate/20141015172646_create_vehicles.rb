class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
    	t.string   :make
    	t.string   :model
    	t.integer  :year
    	t.string   :style
    	t.string   :engine_size
    	t.belongs_to :user
      t.timestamps
    end

    add_index :vehicles, :user_id
  end
end
