require_relative "./../lib/robot.rb"

describe Robot do

  let(:position_x) { 0 }
  let(:position_y) { 1 }
  let(:direction) { "NORTH"}
  let(:robot) {Robot.new( position_x, position_y, direction )}

  describe  "#place" do
    context "given the PLACE command" do
      let(:place_position_x) { 3 }
      let(:place_position_y) { 5 }
      let(:place_direction) { "SOUTH"}

      it "repositions with new place positions" do
        expect(
          robot.place(place_position_x, place_position_y , place_direction)
        ).to eql(
          [place_position_x, place_position_y , place_direction]
        )
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

    context "given the MOVE command and facing NORTH" do
    let(:direction) { "NORTH"}

      it "will move one unit forward in its current direction" do
        expect(robot.move()).to eql([position_x + 1 , position_y , direction])
      end
    end

    context "given the MOVE command and facing SOUTH" do
    let(:direction) { "SOUTH"}

      it "will move one unit forward in its current direction" do
        expect(robot.move()).to eql([position_x - 1 , position_y , direction])
      end
    end

    context "given the MOVE command and facing EAST" do
    let(:direction) { "EAST"}

      it "will move one unit forward in its current direction" do
        expect(robot.move()).to eql([position_x , position_y + 1 , direction])
      end
    end

    context "given the MOVE command and facing WEST" do
    let(:direction) { "WEST"}

      it "will move one unit forward in its current direction" do
        expect(robot.move()).to eql([position_x , position_y - 1 , direction])
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

  describe  "#right" do
    context "given the RIGHT command" do

      context "current direction is NORTH" do
        let(:robot) {Robot.new( position_x, position_y, "NORTH" )}
        it "will turn right on its current position" do
          expect(robot.right()).to eql([position_x, position_y, "EAST"])
        end
      end

      context "current direction is EAST" do
        let(:robot) {Robot.new( position_x, position_y, "EAST" )}
        it "will turn right on its current position" do
          expect(robot.right()).to eql([position_x, position_y, "SOUTH"])
        end
      end

      context "current direction is SOUTH" do
        let(:robot) {Robot.new( position_x, position_y, "SOUTH" )}
        it "will turn right on its current position" do
          expect(robot.right()).to eql([position_x, position_y, "WEST"])
        end
      end

      context "current direction is WEST" do
        let(:robot) {Robot.new( position_x, position_y, "WEST" )}
        it "will turn right on its current position" do
          expect(robot.right()).to eql([position_x, position_y, "NORTH"])
        end
      end

    end
  end

  describe  "#place_valid?" do
    context "given a valid place position" do
      it "will return true" do
        expect(robot.place_valid?(5,3)).to be_truthy
      end
    end

    context "given a invalid place position" do
      it "will return false" do
        expect(robot.place_valid?(6,7)).to be_falsey
      end
    end
  end


end
