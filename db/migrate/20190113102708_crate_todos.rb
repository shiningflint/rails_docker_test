class CrateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text(:text)
      t.timestamps
    end
  end
end
