class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
    	t.string 	:name
    	t.integer 	:mileage
    	t.string 	:part_number
    	t.belongs_to :vehicle
      	t.timestamps
    end

    add_index :parts, :vehicle_id
  end
end
