class CreateFluidChanges < ActiveRecord::Migration
  def change
    create_table :fluid_changes do |t|
    	t.string 	:fluid_type
    	t.integer 	:mileage
    	t.string 	:name
    	t.string	:weight
    	t.belongs_to :vehicle
	    t.timestamps
    end
    add_index :fluid_changes, :vehicle_id
  end
end
