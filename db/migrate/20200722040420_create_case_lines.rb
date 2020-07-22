class CreateCaseLines < ActiveRecord::Migration[6.0]
  def change
    create_table :case_lines, id: :uuid do |t|
      t.string :object_id, null: false
      t.string :fingerprint
      t.timestamp :event_date, null: false
      t.timestamp :case_date, null: false
      t.boolean :died, null: false, default: false
      t.string :origin
      t.integer :age
      t.string :county

      t.timestamps
    end
  end
end
