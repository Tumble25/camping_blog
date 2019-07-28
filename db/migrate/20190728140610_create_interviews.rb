class CreateInterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :interviews do |t|
      t.string :camping
      t.string :title
      t.string :picture
      t.string :content
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
