class CreateChampion < ActiveRecord::Migration[5.1]
  def up
    create_table :champion, id: false do |t|
      t.string :id, null: false
      t.string :name_jp, index: true, null: false
      t.string :version, index: true, null: false
      t.text :body, limit: 65535, null: false
    end
    execute "ALTER TABLE champion ADD PRIMARY KEY (id, version);"
  end

  def down
    drop_table :champion
  end
end
