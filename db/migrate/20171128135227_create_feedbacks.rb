class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.references :ratable, polymorphic: true, index: true
      t.integer :rating
      t.string :comment

      t.timestamps
    end
    # add_index :feedbacks, [:ratable_id, :ratable_type]
  end
end
