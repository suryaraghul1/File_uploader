class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
       t.string :name
      t.string :position
      t.string :emailId
      t.string :attachment

      t.timestamps
    end
  end
end
