require "history"
describe History do
  let(:status) {double :status}
  let(:entry_station) {double :entry_station}
  it "will return a entry station" do
    expect(subject.entry(:entry_station)).to eq :entry_station
  end
end
