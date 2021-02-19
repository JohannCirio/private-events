class CreateEventParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :event_participations do |t|
      t.integer :event_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
