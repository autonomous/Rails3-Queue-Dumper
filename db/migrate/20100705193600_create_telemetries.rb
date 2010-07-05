class CreateTelemetries < ActiveRecord::Migration
  def self.up
    create_table :telemetries do |t|
      t.text :data

      t.timestamps
    end
  end

  def self.down
    drop_table :telemetries
  end
end
