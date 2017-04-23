require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Employee, type: :model do
  # Association test

  # ensure Employee model has a 1:m relationship with the Item model

  # Validation tests
  it { should validate_presence_of(:registration) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:name) }

end
