require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "columns" do
    it { is_expected.to have_db_column(:name)}
    it { is_expected.to have_db_column(:link)}
    it { is_expected.to have_db_column(:repository_link) }
    it { is_expected.to have_db_column(:description) }
  end
end
