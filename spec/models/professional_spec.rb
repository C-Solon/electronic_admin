require 'rails_helper'

RSpec.describe Professional, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:work_relationships) }

    it { should have_many(:specializations) }

    it { should have_many(:appointments) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
