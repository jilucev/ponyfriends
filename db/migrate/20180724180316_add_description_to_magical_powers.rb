class AddDescriptionToMagicalPowers < ActiveRecord::Migration
  def change
    add_column :magical_powers, :description, :string
    add_reference :magical_powers, :pony
  end
end
