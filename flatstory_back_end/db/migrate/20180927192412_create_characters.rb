class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.string :character_name
      t.integer :base_health
      t.integer :base_strength
      t.integer :base_speed
      t.integer :base_damage
      t.timestamps
    end
  end
end
