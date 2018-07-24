class CreateMagicalPowers < ActiveRecord::Migration
  def change
    create_table :magical_powers do |t|
      t.string :name
      t.integer :intensity

      t.timestamps null: false
    end
  end
end
