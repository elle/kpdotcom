class CreateAchievements < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.integer :rank
      t.string :heading
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :achievements
  end
end
