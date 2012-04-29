require "range_refactored"

describe Range do
  it "(0..1) and (1..2) don't overlap'" do
    (0..1).overlaps_with?(1..2).should be_false
  end

  it "(1..2) and (2..3) don't overlap'" do
    (1..2).overlaps_with?(2..3).should be_false
  end

  it "(1..3) and (2..4) do overlap" do
    (1..3).overlaps_with?(2..4).should be_true
  end

  it "(1..10) and (2..4) do overlap" do
    (1..10).overlaps_with?(2..4).should be_true
  end

  it "(2..4) and (1..10) do overlap" do
    (2..4).overlaps_with?(1..10).should be_true
  end
end