class AddDbExtensions < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'citext'
    enable_extension 'unaccent'
  end
end
