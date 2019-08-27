require 'rails_helper'

RSpec.describe Appointment, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:professional) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
