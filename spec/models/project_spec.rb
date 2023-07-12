require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "columns" do
    it { is_expected.to have_db_column(:name)}
    it { is_expected.to have_db_column(:link)}
    it { is_expected.to have_db_column(:repository_link) }
    it { is_expected.to have_db_column(:description) }
  end

  describe 'validations' do
    describe 'presence' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:link) }
      it { is_expected.to validate_presence_of(:repository_link) }
      it { is_expected.to validate_presence_of(:description) }
    end

    describe 'uniqueness' do
      it { is_expected.to validate_uniqueness_of(:name) }
    end
  end
end
