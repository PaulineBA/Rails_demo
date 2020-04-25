require 'rails_helper'
require 'spec_helper'

RSpec.describe Model, type: :model do
  describe 'DB table' do
      it { is_expected.to have_db_column :id }
      it { is_expected.to have_db_column :username }
      it { is_expected.to have_db_column :password }
  end

  describe 'Validations' do
      it { is_expected.to validate_presence_of :name }
      it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_uniqueness_of :username }
  end

  describe 'factory' do
      it 'has a valid factory' do
          expect( create( :model) ).to be_valid
      end
  end

end