class AddForeignKeyToKifu < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :kifu, :player
  end
end
