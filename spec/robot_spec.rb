require "./../lib/robot.rb"

describe Robot do

  let(:position_x) { 0 }
  let(:position_y) { 1 }
  let(:direction) { "NORTH"}
  let(:robot) {Robot.new( position_x, position_y, direction )}

  describe  "#report" do
    context "given the REPORT command" do
      it "returns position and direction" do
        expect(robot.report()).to eql([position_x, position_y, direction])
      end
    end
  end

  describe  "#report" do
    context "given the REPORT command" do
      it "returns position and direction" do
        expect(robot.report()).to eql([position_x, position_y, direction])
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

  # needs refactoring
  describe  "#left" do
    context "given the LEFT command" do

      context "current direction is NORTH" do
        let(:robot) {Robot.new( position_x, position_y, "NORTH" )}
        it "will turn left on its current position" do
          expect(robot.left()).to eql([position_x, position_y, "WEST"])
        end
      end

      context "current direction is EAST" do
        let(:robot) {Robot.new( position_x, position_y, "EAST" )}
        it "will turn left on its current position" do
          expect(robot.left()).to eql([position_x, position_y, "NORTH"])
        end
      end

      context "current direction is SOUTH" do
        let(:robot) {Robot.new( position_x, position_y, "SOUTH" )}
        it "will turn left on its current position" do
          expect(robot.left()).to eql([position_x, position_y, "EAST"])
        end
      end

      context "current direction is WEST" do
        let(:robot) {Robot.new( position_x, position_y, "WEST" )}
        it "will turn left on its current position" do
          expect(robot.left()).to eql([position_x, position_y, "SOUTH"])
        end
      end

    end
  end

end
