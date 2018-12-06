require "station"

describe Station do
   let(:name) {double :name}
   let(:zone) {double :zone}


  it "should have a name variable initialised" do
    expect(subject).to respond_to :name
  end

  it "should have a zone variable initialised" do
    expect(subject).to respond_to :zone
  end

end
