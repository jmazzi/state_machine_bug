class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :status
      t.timestamps
    end
  end
end
