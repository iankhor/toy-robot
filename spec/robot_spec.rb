require "./../lib/robot.rb"

describe Robot do

  let(:position_x) { 0 }
  let(:position_y) { 1 }
  let(:direction) { "NORTH"}

  describe  "#report" do
    context "given the REPORT command" do
      it "returns position and direction" do
        expect(Robot.report()).to eql([position_x, position_y, direction])
      end
    end
  end

end
