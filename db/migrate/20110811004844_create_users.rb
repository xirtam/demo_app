class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
class User < ActiveRecord::Base
	has_many :microposts
end
  def self.down
    drop_table :users
  end
end
