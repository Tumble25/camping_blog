class AddPictureToInterviews < ActiveRecord::Migration[5.2]
  def change
    add_column :interviews, :picture, :string
  end
end
