require "spec_helper"

describe PlaylistMusicasController do
  describe "routing" do

    it "routes to #index" do
      get("/playlist_musicas").should route_to("playlist_musicas#index")
    end

    it "routes to #new" do
      get("/playlist_musicas/new").should route_to("playlist_musicas#new")
    end

    it "routes to #show" do
      get("/playlist_musicas/1").should route_to("playlist_musicas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/playlist_musicas/1/edit").should route_to("playlist_musicas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/playlist_musicas").should route_to("playlist_musicas#create")
    end

    it "routes to #update" do
      put("/playlist_musicas/1").should route_to("playlist_musicas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/playlist_musicas/1").should route_to("playlist_musicas#destroy", :id => "1")
    end

  end
end
