class AddColumnRatingsToEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :rating, :integer
  end
end
