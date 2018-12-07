require "history"
describe History do

  let(:status) {double :status}
  let(:entry_station) {double :entry_station}
  let(:exit_station) {double :exit_station}
  
  it "should return the entry station" do
    expect(subject.entry(:entry_station)).to eq :entry_station
  end

  it "should return the exit station" do
    expect(subject.exit(:exit_station)).to eq :exit_station
  end


end
