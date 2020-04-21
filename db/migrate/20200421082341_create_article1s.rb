class CreateArticle1s < ActiveRecord::Migration[6.0]
  def change
    create_table :article1s do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
