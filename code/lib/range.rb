class Range
  def overlaps_with? other
    (self.first > other.first && self.first < other.last) ||
        (self.last > other.first && self.last < other.last) ||
        (self.first < other.first && self.last > other.last)
  end
end