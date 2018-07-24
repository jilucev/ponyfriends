class CreatePoniesFriendsJoin < ActiveRecord::Migration
    def change
      create_table :friends_ponies do |t|
        t.integer :friend_id
        t.integer :pony_id
    end
  end
end
