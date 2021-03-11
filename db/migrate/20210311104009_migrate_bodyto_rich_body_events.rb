class MigrateBodytoRichBodyEvents < ActiveRecord::Migration[6.0]
  def change
    def up
      Event.find_each do |event|
        event.update(rich_body: event.body)
      end
    end
  
    def down
      Event.find_each do |event|
        event.update(body: event.rich_body)
        event.update(rich_body: nil)
      end
    end
  end
end
