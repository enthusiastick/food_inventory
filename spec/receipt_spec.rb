require 'spec_helper'

describe Receipt do
  it { should belong_to(:food) }
end

