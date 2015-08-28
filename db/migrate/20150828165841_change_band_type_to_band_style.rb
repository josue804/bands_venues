class ChangeBandTypeToBandStyle < ActiveRecord::Migration
  def change
    rename_column(:bands, :type, :style)
  end
end
