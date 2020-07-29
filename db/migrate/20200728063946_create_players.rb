class CreatePlayers < ActiveRecord::Migration[5.2]
  def self.up
    create_table :players do |t|
        t.column :player_id, :integer, :null => false
        t.column :player_name, :string, :null => false
        t.column :player_rank, :string, :null => false
    end
  end
end
