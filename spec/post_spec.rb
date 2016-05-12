require "spec_helper"
require "post"

describe Post do
  describe ".today" do
    it "returns posts created today" do
      posts_today = double("posts_today")
      allow(Post).to receive(:today).and_return posts_today

      result = Post.today

      expect(result).to eq posts_today
    end
  end

  around do |example|
    Timecop.freeze { example.run }
  end
end

