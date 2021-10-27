class CreateUsercommunicationsUsermaildata < ActiveRecord::Migration[6.1]
  def change
    create_table :usercommunications_usermaildata do |t|
      t.string :username
      t.string :useremail
      t.text :content

      t.timestamps
    end
  end
end
