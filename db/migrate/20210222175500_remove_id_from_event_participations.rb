class RemoveIdFromEventParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_participations, :id
  end
end
