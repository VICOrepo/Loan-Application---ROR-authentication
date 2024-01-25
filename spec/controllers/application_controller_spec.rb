# frozen_string_literal: true

# spec/controllers/application_controller_spec.rb

require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe 'shared behavior' do
    controller do
      def index
        render plain: 'OK'
      end
    end
    # Add more shared behavior tests
  end

  describe 'customizations' do
    controller do
      def index
        render plain: 'Custom Index'
      end
    end

    it 'renders a custom index' do
      get :index
      expect(response.body).to eq('Custom Index')
    end

    # Add more tests for customizations
  end
end
