class AddVideoToSouls < ActiveRecord::Migration[5.2]
  def change
    add_column :souls, :video, :string
  end
end
