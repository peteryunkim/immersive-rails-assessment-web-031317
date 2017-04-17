class CreateGuestEpisode < ActiveRecord::Migration[5.0]
  def change
    create_table :guest_episodes do |t|
      t.integer :guest_id
      t.integer :episode_id
    end
  end
end
