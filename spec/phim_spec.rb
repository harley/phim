require 'spec_helper'

describe Phim do
  it 'has a version number' do
    expect(Phim::VERSION).not_to be nil
  end

  let(:search) { Phim::Search.new('phim') }

  it 'initialize with a resource type' do
    expect(search.url).to eq "http://www.123phim.vn/phim/"
  end

  describe "#results" do
    it "should cache" do
    end

    it "should return a list" do
    end
  end

  describe "#titles" do

  end
end
