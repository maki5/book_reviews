require 'rails_helper'

RSpec.describe User , type: :model do
  describe "associations" do
    it { is_expected.to have_many(:reviews) }
  end

  describe 'full name' do
    let!(:user) {FactoryGirl.create(:user)}
    it "should return full name" do
      expect(user.full_name).to eq("first_name last_name")
    end
  end
end