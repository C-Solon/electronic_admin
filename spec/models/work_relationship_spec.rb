require 'rails_helper'

RSpec.describe WorkRelationship, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:office) }

    it { should belong_to(:professional) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
