class CreateKifus < ActiveRecord::Migration[5.2]
  def change
    create_table :kifus do |t|
        t.column :player_id, :integer, :null => false
        t.column :player_id, :integer, :null => false
        t.column :Game_date, :string, :null => false
        t.column :Game_result, :string, :null => false
        t.column :View, :string
    end
  end
end
