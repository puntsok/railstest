class CreateJedis < ActiveRecord::Migration
  def self.up
    create_table :jedis do |t|
      t.string   :name
      t.string   :rank
      t.integer  :master_id

      t.timestamps
    end
  end

  def self.down
    drop_table :jedis
  end
end
