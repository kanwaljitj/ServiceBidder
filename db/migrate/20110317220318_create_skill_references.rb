class CreateSkillReferences < ActiveRecord::Migration
  def self.up
    create_table :skill_references do |t|
      t.integer :SkillProfile_id
      t.string :Description
      t.string :AdditionalInfo

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_references
  end
end
