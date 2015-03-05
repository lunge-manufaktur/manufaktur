class CreateSeriesStepEntries < ActiveRecord::Migration
  def change
    create_table :series_step_entries do |t|
      t.references :series_step, index: true
      t.references :employee, index: true
      t.date :date, index: true
      t.boolean :b_stock
      t.integer :g1
      t.integer :g1h
      t.integer :g2
      t.integer :g2h
      t.integer :g3
      t.integer :g3h
      t.integer :g4
      t.integer :g4h
      t.integer :g5
      t.integer :g5h
      t.integer :g6
      t.integer :g6h
      t.integer :g7
      t.integer :g7h
      t.integer :g8
      t.integer :g8h
      t.integer :g9
      t.integer :g9h
      t.integer :g10
      t.integer :g10h
      t.integer :g11
      t.integer :g11h
      t.integer :g12
      t.integer :g12h
      t.integer :g13
      t.integer :g13h
      t.integer :g14
      t.integer :g14h
      t.integer :g15
      t.integer :g16

      t.timestamps null: false
    end
    add_foreign_key :series_step_entries, :series_steps
    add_foreign_key :series_step_entries, :employees
  end
end
