
class CreateMagis < ActiveRecord::Migration[4.2]
  def change
    create_table :magis do |t|
      t.string :chara
      t.integer :rate
      t.text :description

      t.timestamps
    end
  end
end

