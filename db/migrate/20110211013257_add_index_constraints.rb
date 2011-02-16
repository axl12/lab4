class AddIndexConstraints < ActiveRecord::Migration
  def self.up
	#add_index :students, :student_id, :unique => true
	#add_index :courses, :code, :unique => true
	
	add_index :courses, :code, :unique => true
	add_index :clients, :id, :unique => true
	add_index :clients, :nit, :unique => true
	add_index :products, :id, :unique => true
	add_index :products, :code, unique => true
	add_index :orders, :id, unique => true
	add_index :orders, :code, unique => true
  end

  def self.down
	#remove_index :students, :student_id
	remove_index :courses, :code
	remove_index :clientes, :id
	remove_index :clientes, :nit
	remove_index :products, :id
	remove_index :products, :code
	remove_index :orders, :id
	remove_index :orders, :code
	
	end
end
