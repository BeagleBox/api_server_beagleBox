require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Employee, type: :model do

  # Association test
  it { should belong_to(:departament) }

  # ensure Employee model has a 1:1 relationship with the Departament



  # Validation tests
  it { should validate_presence_of(:registration) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:password).is_at_least(8).on(:create)}
  it { should validate_length_of(:name).is_at_least(3).on(:create)}
  it { should validate_length_of(:name).is_at_most(80).with_long_message('Secret key must be less than 100 characters')}
end
