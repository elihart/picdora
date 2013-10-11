class TestData < ActiveRecord::Migration
  def change
    user = User.create(name: 'Eli')

    Channel.create(name: "test", user: user)

  end
end
