class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table(:events) do |t|
      t.column(:band_id, :int)
      t.column(:venue_id, :int)
      t.column(:tickets, :int)

      t.timestamps(:null => false)
    end
  end
end
