require 'rails_helper'

RSpec.describe Specialty, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:specializations) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
