class AddRepositoryProcessedBoolean < ActiveRecord::Migration
  def change
    add_column :repositories, :processed, :boolean, default: false
  end
end
