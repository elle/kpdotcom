class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.column :name, :string
      t.column :heading, :string
      t.column :description, :text
      t.column :rank, :integer
    end
  end

  def self.down
    drop_table :services
  end
end
