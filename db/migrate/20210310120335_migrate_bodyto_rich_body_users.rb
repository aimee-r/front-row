class MigrateBodytoRichBodyUsers < ActiveRecord::Migration[6.0]
  def change
    def up
      User.find_each do |user|
        user.update(rich_body: user.body)
      end
    end
  
    def down
      User.find_each do |user|
        user.update(body: user.rich_body)
        user.update(rich_body: nil)
      end
    end
  end
end
