examples-expecting
shouldBeCloseTo
  600.123456789 should beCloseTo: 600.1.
	600.123456789 should not beCloseTo: 600.0.
	600.123456789 should not beCloseTo: 600.2