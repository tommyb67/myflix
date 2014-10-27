require 'spec_helper'

describe Video do
  it { should belong_to(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe "search_by_title" do
    it "returns an empty array if there is no match" do
      family = Video.create(title: "Family Guy", description: "Adult Cartoon")
      all_family = Video.create(title: "All in the Family", description: "unpc queens family")

      expect(Video.search_by_title("live")).to eq([])
    end

    it "returns an array of one video for an exact match" do
      family = Video.create(title: "Family Guy", description: "Adult Cartoon")
      futurama = Video.create(title: "Futurama", description: "Space fantasy")

      expect(Video.search_by_title("Futurama")).to eq([futurama])
    end

    it "returns an array of one video for a partial match" do
      family = Video.create(title: "Family Guy", description: "Adult Cartoon")
      futurama = Video.create(title: "Futurama", description: "Space fantasy")

      expect(Video.search_by_title("Family")).to eq([family])
    end

    it "returns an array of all matches ordered by created_at" do
      family = Video.create(title: "Family Guy", description: "Adult Cartoon", created_at: 1.day.ago)
      all_family = Video.create(title: "All in the Family", description: "unpc queens family")

      expect(Video.search_by_title("Family")).to eq([all_family, family])
    end

     it "returns an empty array for a search with an empty string" do
      family = Video.create(title: "Family Guy", description: "Adult Cartoon")
      futurama = Video.create(title: "Futurama", description: "Space fantasy")

      expect(Video.search_by_title("")).to eq([])
    end
  end
end