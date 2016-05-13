class PlaylistMusicasController < ApplicationController
  before_action :set_playlist_musica, only: [:show, :edit, :update, :destroy]

  # GET /playlist_musicas
  # GET /playlist_musicas.json
  def index
    @playlist_musicas = PlaylistMusica.all
  end

  # GET /playlist_musicas/1
  # GET /playlist_musicas/1.json
  def show
  end

  # GET /playlist_musicas/new
  def new
    @playlist_musica = PlaylistMusica.new
  end

  # GET /playlist_musicas/1/edit
  def edit
  end

  # POST /playlist_musicas
  # POST /playlist_musicas.json
  def create
    @playlist_musica = PlaylistMusica.new(playlist_musica_params)

    respond_to do |format|
      if @playlist_musica.save
        format.html { redirect_to @playlist_musica, notice: 'Playlist musica was successfully created.' }
        format.json { render :show, status: :created, location: @playlist_musica }
      else
        format.html { render :new }
        format.json { render json: @playlist_musica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlist_musicas/1
  # PATCH/PUT /playlist_musicas/1.json
  def update
    respond_to do |format|
      if @playlist_musica.update(playlist_musica_params)
        format.html { redirect_to @playlist_musica, notice: 'Playlist musica was successfully updated.' }
        format.json { render :show, status: :ok, location: @playlist_musica }
      else
        format.html { render :edit }
        format.json { render json: @playlist_musica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlist_musicas/1
  # DELETE /playlist_musicas/1.json
  def destroy
    @playlist_musica.destroy
    respond_to do |format|
      format.html { redirect_to playlist_musicas_url, notice: 'Playlist musica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_musica
      @playlist_musica = PlaylistMusica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_musica_params
      params.require(:playlist_musica).permit(:playlist_id, :musica_id)
    end
end
