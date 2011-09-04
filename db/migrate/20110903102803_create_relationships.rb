class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :from
      t.references :to
      t.references :relation

      t.timestamps
    end
    add_index :relationships, :from_id
    add_index :relationships, :to_id
    add_index :relationships, :relation_id
  end
end
