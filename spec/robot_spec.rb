require "./../lib/robot.rb"

describe Robot do

  let(:position) { "0,1" }
  let(:direction) { "NORTH" }

  describe  "#report" do
    context "given the REPORT command" do
      it "prints position and direction to screen" do
        expect(Robot.report()).to eql(:position + "," + :direction)
      end
    end
  end


end
