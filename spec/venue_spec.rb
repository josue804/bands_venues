require('spec_helper')

describe(Venue) do
  it{should have_many(:events)}

  it('should save the fed in venue attributes capitalized') do
    test_band = Venue.create({:name => 'the moda center', :seats => 200, :indoor => false})
    expect(test_band.name).to(eq('The Moda Center'))
  end
end
