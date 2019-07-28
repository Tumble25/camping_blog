class CreateInterviewPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :interview_photos do |t|
      t.string :picture
      t.references :interview, foreign_key: true

      t.timestamps
    end
  end
end
