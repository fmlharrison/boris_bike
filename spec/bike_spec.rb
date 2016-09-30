require 'bike'

describe Bike do

  it { is_expected.to respond_to :not_working? }

  it "should tell if a bike is broken or not" do
    bike = Bike.new
    expect(bike.not_working?).to be false
    bike.report_broken
    expect(bike.not_working?).to eq true
  end

end
