require('spec_helper')

describe(Venue) do
  it{should have_many(:events)}
end
