require 'status'

describe Status do

  let(:status) {double :status}
  let(:entry) {double :entry}
  let(:exit) {double :exit}

  it "should return true when we start journey" do
    expect(subject).to respond_to :status
  end

  it "should return true after journey start" do
    expect(subject.start(:entry)).to eq true
  end

  it "should return false after journey finished" do
    expect(subject.finish(:exit)).to eq false
  end

  it "should return true when in use" do
    subject.start(:entry)
    expect(subject.in_use?).to eq true
  end
  context "#fare" do
    it "should return min fare" do
      subject.start(:entry)
      subject.finish(:exit)
      expect(subject.fare).to eq Status::MIN_FARE
    end
    it "should return penalty fare" do
      subject.start(:entry)
      expect(subject.fare).to eq Status::PENALTY_FARE
    end
  end
end
