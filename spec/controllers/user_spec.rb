require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create(:user) }

  describe 'GET #index' do
    subject { get :index }

    it 'returns a 200 OK status' do
      expect(subject).to have_http_status(:ok)
    end

    it 'renders the index template' do
      expect(subject).to render_template(:index)
      expect(subject).to render_template('index')
    end

    it 'renders the application layout' do
      expect(subject).to render_template('layouts/application')
    end
  end

  context 'GET #show' do
    subject { get :show, params: { id: user.id } }

    it 'returns a 200 OK status' do
      expect(subject).to have_http_status(:ok)
    end

    it 'should showing user page' do
      expect(response.status).to eq(200)
      expect(flash[:notice]).to be nil
      expect(subject).to render_template('show')
    end
  end

  context 'POST #create' do
    # it 'should user creation' do
    #   post :create, params: {
    # code: 'A-001', email: 'test@gmial.com', entity: 'reservation', report_type: 'Confirmed'
    # }
    #
    #   # user = assigns(:user)
    #   expect(response).to render_template(:new)
    #   expect(subject).to render_template("index")
    #   # expect(response).to redirect_to(user_path(user))
    #   # expect(flash[:notice]).to be
    # end
  end
end
