class CreateBandsAndVenuesTables < ActiveRecord::Migration
  def change
    create_table(:bands) do |t|
      t.column(:name, :string)
      t.column(:type, :string)
      t.column(:lead, :string)

      t.timestamps()
    end

    create_table(:venues) do |t|
      t.column(:name, :string)
      t.column(:seats, :integer)
      t.column(:indoor, :boolean)

      t.timestamps()
    end
  end
end
