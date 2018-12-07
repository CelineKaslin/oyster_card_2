require 'journey'
describe Journey do
  let(:status) {double :status}
  it "should return true when we start journey" do
    expect(subject).to respond_to :status
  end
end
