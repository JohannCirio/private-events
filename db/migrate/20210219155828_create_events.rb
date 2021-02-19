class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.date :date
      t.integer :host_id

      t.timestamps
    end
  end
end
