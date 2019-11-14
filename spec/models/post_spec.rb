require 'rails_helper'

RSpec.describe Post, type: :model do

  # ref: https://github.com/thoughtbot/shoulda-matchers

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }
  end
end
