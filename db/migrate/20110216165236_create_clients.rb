class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
	t.integer :id
	t.text :name
    t.text :address
	t.integer :nit
	t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
