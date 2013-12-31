require 'spec_helper'

describe Food do
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:receipts) }
end

