require 'rails_helper'
RSpec.describe Post, type: :model do
  context 'checking method' do
    it "sorting by title check" do
      # posts=Post.new.post_sort_by_title
      # Auther.new({auther_name: "mayur", email: "mayur@test.com", password: "1234567"}).save
      Post.new({title: "mayur", content: "good boy vaaf abvf av",auther_id: 1}).save
      Post.create({title: "shubham", content: "good boy vaaf abvf av",auther_id: 1})
      Post.create({title: "atish", content: "good boy vaaf abvf av",auther_id: 1})
      sorted_posts=Post.sorted_posts
      byebug
      expect(sorted_posts.first.title).to eq "atish"
    end
  end
end