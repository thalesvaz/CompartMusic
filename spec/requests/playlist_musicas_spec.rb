require 'spec_helper'

describe "PlaylistMusicas" do
  describe "GET /playlist_musicas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get playlist_musicas_path
      response.status.should be(200)
    end
  end
end
