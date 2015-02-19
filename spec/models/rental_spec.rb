require 'rails_helper'

describe Rental do
  it { should validate_presence_of :location }
  it { should validate_presence_of :bedrooms }
  it { should validate_presence_of :baths }
  it { should validate_presence_of :sleeps }
  it { should validate_presence_of :price }
  it { should validate_presence_of :user_id }
  it { should belong_to :user }

end
