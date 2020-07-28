class CreateKifus < ActiveRecord::Migration[5.2]
  def change
    create_table :kifus do |t|
      t.string :game

      t.timestamps
    end
  end
end
