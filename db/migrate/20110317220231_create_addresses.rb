class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :Line1
      t.string :Line2
      t.string :City
      t.string :State
      t.string :ZipCode
      t.string :Extension
      t.string :Country
      t.integer :Subscriber_id

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
