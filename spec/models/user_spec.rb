require 'rails_helper'

RSpec.describe User, type: :model do
  # before do
  #   @role = User.new(name: 'admin')
  #   @user = @role.users.build(name: 'Example User', photo: 'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png',
  #     bio: 'a short bio', posts_counter: 0, email: 'tester@test.com', password: '123456', password_confirmation: '123456', jti: '08da43f5-7eef-4f14-90a1-1252863e070f')
  # end
  it 'is valid with valid attributes' do
   
    user = create(:user)
    expect(user).to be_valid
  end
  # it 'is not valid without a name' do
  #   user = build(:user, name: nil)
  #   expect(user).to_not be_valid
  # end
  it 'posts_counter is 0 by default' do
    user = create(:user)
    expect(user.posts_counter).to eq(0)
  end
  # it 'posts_counter is not valid without a numeric value' do
  #   user = build(:user, posts_counter: 'a')
  #   expect(user).to_not be_valid
  # end
  # it 'posts_counter is not valid if its not greater than or equal to 0' do
  #   user = build(:user, posts_counter: -1)
  #   expect(user).to_not be_valid
  # end
  it 'displays the three most recent posts' do
    user = create(:user)
    create(:post, user:)
    create(:post, user:)
    create(:post, user:)
    expect(user.posts.count).to eq(3)
  end
end
