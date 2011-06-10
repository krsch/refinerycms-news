class AddDigestToNewsItems < ActiveRecord::Migration
  def self.up
    unless ::NewsItem.column_names.map(&:to_sym).include?(:digest)
      add_column ::NewsItem.table_name, :digest, :text
    end
  end
  
  def self.down
    if ::NewsItem.column_names.map(&:to_sym).include?(:digest)
      remove_column ::NewsItem.table_name, :digest
    end
  end
end