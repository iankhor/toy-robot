require "./../lib/robot.rb"

describe Robot do

  let(:position_x) { 0 }
  let(:position_y) { 1 }
  let(:direction) { "NORTH"}
  let(:robot) {Robot.new}

  describe  "#report" do
    context "given the REPORT command" do
      it "returns position and direction" do
        expect(Robot.report()).to eql([position_x, position_y, direction])
      end
    end
  end


  describe  "#move" do
    context "given the MOVE command" do
      it "will move one unit forward in its current direction" do
        expect(robot.move()).to eql([position_x, position_y + 1, direction])
      end
    end
  end

end
