class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :icon
      t.string :avatar

      t.timestamps
    end
  end
end
