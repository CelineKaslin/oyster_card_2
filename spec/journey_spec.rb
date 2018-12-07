require 'journey'
describe Journey do
  let(:status) {double :status}
  it "should return true when we start journey" do
    expect(subject).to respond_to :status
  end

  it "should return true after journey start" do
    expect(subject.start).to eq true
  end



end
