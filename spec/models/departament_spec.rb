require 'rails_helper'

RSpec.describe Departament, type: :model do

  # Association test
  #it { should has_one(:chef) }


  # Validation tests
  it { should validate_presence_of(:name) }



end
