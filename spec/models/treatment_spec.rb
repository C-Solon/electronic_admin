require 'rails_helper'

RSpec.describe Treatment, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:charges) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
