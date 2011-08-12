class CreateMicroposts < ActiveRecord::Migration
  def self.up
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
class Micropost < ActiveRecord::Base
	belongs_to :user	
	validates :content, :length => ( :maximum => 140 )
end
  def self.down
    drop_table :microposts
  end
end
