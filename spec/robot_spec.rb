require "./../lib/robot.rb"

describe Robot do

  let(:position_direction) { "0,1,NORTH" }

  describe  "#report" do
    context "given the REPORT command" do
      it "prints position and direction to screen" do
        expect(Robot.report()).to eql("0,1,NORTH")
      end
    end
  end


end
