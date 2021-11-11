require 'rails_helper'

RSpec.describe 'users/index.html.erb', type: :view do
  before(:each) do
    assign(:users, [
             FactoryBot.build_stubbed(
               :user, code: 'A-001', email: 'test@gmail.com', entity: 'reservation', report_type: 'Confirmed'
             ),
             FactoryBot.build_stubbed(
               :user, code: 'A-002', email: 'test2@gmail.com', entity: 'cancellation', report_type: 'Modified'
             )
           ])

    render
  end

  it 'should renders user code' do
    expect(rendered).to match(/A-001/)
    expect(rendered).to match(/A-002/)
  end

  it 'should render user email' do
    expect(rendered).to match(/test@gmail.com/)
    expect(rendered).to match(/test2@gmail.com/)
  end

  it 'should render user entity' do
    expect(rendered).to match(/reservation/)
    expect(rendered).to match(/cancellation/)
  end

  it 'should render user report_type' do
    expect(rendered).to match(/Confirmed/)
    expect(rendered).to match(/Modified/)
  end

  it 'should renders users code order' do
    expect(rendered).to match(/A-001.*A-002/m)
  end
end
