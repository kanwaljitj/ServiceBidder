class CreateServiceQuotes < ActiveRecord::Migration
  def self.up
    create_table :service_quotes do |t|
      t.decimal :Amount
      t.integer :ServiceRequest_id
      t.integer :Subscriber_id

      t.timestamps
    end
  end

  def self.down
    drop_table :service_quotes
  end
end
