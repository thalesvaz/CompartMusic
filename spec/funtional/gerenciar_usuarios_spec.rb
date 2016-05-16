# coding: utf-8
require 'spec_helper'

feature 'gerenciar Usuarios' do

  scenario 'incluir usuario' do 
    visit new_usuario_path
    preencher_e_verificar_usuario
  end

  scenario 'alterar usuario' do 
    usuario = FactoryGirl.create(:usuario)
    visit edit_usuario_path(usuario)
    preencher_e_verificar_usuario

  end

  scenario 'excluir usuario' do
    usuario = FactoryGirl.create(:usuario)
    visit usuarios_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_usuario
    fill_in 'Iduser',   :with => "1"
    fill_in 'Username', :with => "qwerty"
    fill_in 'Senha',  :with => "1212"
    fill_in 'Email',   :with => "exemplo@mail.com"
    fill_in 'Endereco',  :with => "rua x"

    click_button 'Salvar'

    expect(page).to have_content 'Iduser: 1'
    expect(page).to have_content 'Username: qwerty'
    expect(page).to have_content 'Senha: 1212'
    expect(page).to have_content 'Email: exemplo@mail.com'
    expect(page).to have_content 'Endereco: rua x' 
  end
end


