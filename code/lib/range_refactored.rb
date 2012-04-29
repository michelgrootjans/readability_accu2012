class Range
  def overlaps_with? other
    return false if other.last <= self.first  # other finishes before I start
    return false if self.last  <= other.first # I finish before other starts
    true # all other cases overlap
  end
end