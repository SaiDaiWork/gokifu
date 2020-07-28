class AddPlayerToKifu < ActiveRecord::Migration[5.2]
  def change
      add_reference :kifu, :player
  end
end
