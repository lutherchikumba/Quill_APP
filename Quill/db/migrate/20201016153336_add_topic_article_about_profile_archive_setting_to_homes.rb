class AddTopicArticleAboutProfileArchiveSettingToHomes < ActiveRecord::Migration[6.0]
  def change
    add_column :homes, :topic, :string
    add_column :homes, :article, :string
    add_column :homes, :about, :string
    add_column :homes, :archive, :string
    add_column :homes, :setting, :string
  end
end
