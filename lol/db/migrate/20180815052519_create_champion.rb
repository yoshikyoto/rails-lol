class CreateChampion < ActiveRecord::Migration[5.1]
  def up
    create_table :champion, id: false do |t|
      t.string :id
      t.string :name_jp, index: true
      t.string :version, index: true
      t.text :body, limit: 65535
    end
    execute "ALTER TABLE champion ADD PRIMARY KEY (id);"
  end

  def down
    drop_table :champion
  end
end
