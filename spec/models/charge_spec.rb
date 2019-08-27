require 'rails_helper'

RSpec.describe Charge, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:appointment) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
