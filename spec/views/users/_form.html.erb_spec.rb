require 'rails_helper'

RSpec.describe 'users/_form' do
  let(:user) do
    FactoryBot.build_stubbed(
      :user, code: 'A-001', email: 'test@gmail.com', entity: 'reservation', report_type: 'Confirmed'
    )
  end

  before(:each) do
    render partial: 'users/form', user: user
  end

  # it 'should renders user code' do
  #   expect(rendered).to match(/A-001/)
  # end
  #
  # it 'should render user email' do
  #   expect(rendered).to match /test@gmail.com/
  # end
  #
  # it 'should render user entity' do
  #   expect(rendered).to match /reservation/
  # end
  #
  # it 'should render user report_type' do
  #   expect(rendered).to match /Confirmed/
  # end
end
