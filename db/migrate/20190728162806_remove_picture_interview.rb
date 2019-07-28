class RemovePictureInterview < ActiveRecord::Migration[5.2]
  def change
    remove_column :interviews, :picture, :string
  end
end
