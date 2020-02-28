class RemoveStatusFromSouls < ActiveRecord::Migration[5.2]
  def change
    remove_column :souls, :status, :string
  end
end
