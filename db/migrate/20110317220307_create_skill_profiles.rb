class CreateSkillProfiles < ActiveRecord::Migration
  def self.up
    create_table :skill_profiles do |t|
      t.string :Name
      t.string :BusinessInfo
      t.string :PrimaryTel
      t.string :Mobile
      t.integer :WorkRadius
      t.boolean :EmailAlerts
      t.integer :Address_id
      t.integer :Subscriber_id
      t.integer :SkillCategory_id

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_profiles
  end
end
