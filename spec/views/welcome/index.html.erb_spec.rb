require 'rails_helper'

RSpec.describe "welcome/index.html.erb", type: :view do
  let(:user) { FactoryBot.create(:user) }

  it 'welcomes current user' do
    expect(view).to receive(:current_user).and_return(user)
    render
    expect(rendered).to match /Hi #{user.email}/
  end
end
