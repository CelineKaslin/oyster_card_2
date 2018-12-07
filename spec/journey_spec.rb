require 'journey'
describe Journey do
  let(:status) {double :status}
  it "should return true when we start journey" do
    expect(subject).to respond_to :status
  end

  it "should return true after journey start" do
    expect(subject.start).to eq true
  end

  it "should return false after journey finished" do
    expect(subject.finish).to eq false
  end

end
