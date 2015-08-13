require "spec_helper"
require "dashboard"

describe Dashboard do
  describe "#posts" do
    it "returns posts created today" do
      posts = double("posts")
      posts_today = double("posts_today")
      allow(posts).to receive(:today).and_return posts_today
      dashboard = Dashboard.new(posts: posts)
      result = dashboard.posts

      expect(result).to eq posts_today
    end
  end
end
