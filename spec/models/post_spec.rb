require 'rails_helper'
RSpec.describe Post, type: :model do
  context 'checking method' do
    it "sorting by title check" do

      auther = build(:auther)
      post = create(:post, title:"mayur", auther: auther)
      post = create(:post, title:"amar", auther: auther)
      post = create(:post, auther: auther)
      # Post.new({title: "mayur", content: "good boy vaaf abvf av",auther_id: 1}).save
      # Post.create({title: "shubham", content: "good boy vaaf abvf av",auther_id: 1})
      # Post.create({title: "atish", content: "good boy vaaf abvf av",auther_id: 1})
      sorted_posts = Post.sorted_posts
      expect(sorted_posts.first.title).to eq "amar"
    end
  end
end
