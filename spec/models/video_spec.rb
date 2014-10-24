require 'spec_helper'

describe Video do
  it "saves itself" do
    video = Video.new(title: "mash", description: "korean war doctors", small_cover_url: "", large_cover_url: "", category: "TV Comedy")
    video.save
    expect(Video.first).to eq(video)
  end
end