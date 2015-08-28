require('spec_helper')

describe(Band) do
  it{should have_many(:events)}
end
