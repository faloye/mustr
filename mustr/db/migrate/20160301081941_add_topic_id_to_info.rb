class AddTopicIdToInfo < ActiveRecord::Migration
  def change
    add_reference :infos, :topic, index: true, foreign_key: true
  end
end
