class AddImageToProducts < ActiveRecord::Migration[5.1]
  def change
    def up
      add_attachment :users, :image
    end

    def down
      remove_attachment :users, :image
    end
  end
end
