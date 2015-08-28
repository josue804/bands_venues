require('spec_helper')

describe(Event) do

  it{should belong_to(:band)}
  it{should belong_to(:venue)}
  
end
