class AddTopicIdToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :topic, index: true, foreign_key: true
  end
end
