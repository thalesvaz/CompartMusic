# coding: utf-8
require 'spec_helper'

feature 'gerenciar Musicas' do

  scenario 'incluir Musica' do 
    criar_usuario
    visit new_musica_path
    preencher_e_verificar_musica
  end

  scenario 'alterar Musica' do 
    criar_usuario
    musica = FactoryGirl.create(:musica)
    visit edit_musica_path(musica)
    preencher_e_verificar_musica

  end

  scenario 'excluir Musica' do 

    musica = FactoryGirl.create(:musica)
    visit musicas_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_musica
    fill_in 'Idmusic',  :with => "121"
    fill_in 'Nome',     :with => "Bad"
    fill_in 'Tamanho',  :with => "5600"
    fill_in 'Genero',   :with => "eletronic"
    fill_in 'Artista',  :with => "David Guetta"
    fill_in 'Album',    :with => "DV in live"
    select 'Vaz',  from: 'usuario'

    click_button 'Salvar'

    expect(page).to have_content 'Idmusic: 121'
    expect(page).to have_content 'Nome: Bad'
    expect(page).to have_content 'Tamanho: 5600'
    expect(page).to have_content 'Genero: eletronic'
    expect(page).to have_content 'Artista: David Guetta'
    expect(page).to have_content 'Album: DV in live'
  end

  def criar_usuario
  usuario = FactoryGirl.create(:usuario)
  visit new_usuario_path(usuario)
  preencher_e_verificar_usuario
  end

  def preencher_e_verificar_usuario

    fill_in 'Username', :with => 'Vaz'

    click_button 'Salvar'

    expect(page).to have_content 'username: Vaz'

  end
end


