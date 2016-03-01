class AddSphereIdToInfo < ActiveRecord::Migration
  def change
    add_reference :infos, :sphere, index: true, foreign_key: true
  end
end
