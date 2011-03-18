class CreateSubscribers < ActiveRecord::Migration
  def self.up
    create_table :subscribers do |t|
      t.string :Firstname
      t.string :Lastname
      t.string :email
      t.string :password
      t.string :Type
      t.boolean :PasswordReset
      t.boolean :Active

      t.timestamps
    end
  end

  def self.down
    drop_table :subscribers
  end
end
