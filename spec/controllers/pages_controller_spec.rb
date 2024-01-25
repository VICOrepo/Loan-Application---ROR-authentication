# frozen_string_literal: true

# spec/controllers/pages_controller_spec.rb

require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET #home' do
    it 'renders the home template' do
      get :home
      expect(response).to render_template(:home)
    end
  end

  describe 'GET #about' do
    it 'renders the about template' do
      get :about
      expect(response).to render_template(:about)
    end
  end
end
