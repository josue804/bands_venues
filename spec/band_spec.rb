require('spec_helper')

describe(Band) do
  it{should have_many(:events)}

  it('should save the fed in band attributes capitalized') do
    test_band = Band.create({:name => 'josue and the jetsons', :style => 'electronic', :lead => 'josue'})
    expect(test_band.name).to(eq('Josue and the Jetsons'))
    expect(test_band.style).to(eq('Electronic'))
    expect(test_band.lead).to(eq('Josue'))
  end
end
