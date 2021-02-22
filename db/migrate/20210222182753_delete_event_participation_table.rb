class DeleteEventParticipationTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :event_participations
  end
end
