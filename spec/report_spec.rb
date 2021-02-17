require './report.rb'

describe 'report' do
  it 'returns a report for a single green entry' do
    expect(report('Green')).to eq("Green: 1")
  end

  it 'returns a report for multiple green entries' do
    expect(report('Green, Green')).to eq('Green: 2')
  end

  it 'returns a report for multiple green and one amber' do
    expect(report('Green, Green, Amber')).to eq("Green: 2\nAmber: 1")
  end

  it 'returns a report with green, amber and red' do
    expect(report('Green, Green, Amber, Red')).to eq("Green: 2\nAmber: 1\nRed: 1")
  end

  it 'returns the expected outcome report' do
    expect(report("Green, Green, Amber, Red, Green")).to eq("Green: 3\nAmber: 1\nRed: 1")
  end

  it 'accounts for uncounted inputs' do
    expect(report("Green,Dave,Whimsy,Red")).to eq("Green: 1\nRed: 1\nUncounted: 2")
  end

  it 'is case insensitive' do
    expect(report('GREEN')).to eq('Green: 1')
  end

  it 'returns no results given' do
    expect(report(',')).to eq('No results given')
  end

  it " " do
    expect(report('red')).to eq('Red: 1')
  end
end
