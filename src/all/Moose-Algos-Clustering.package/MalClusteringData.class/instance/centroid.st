linkage functions
centroid
	
	| weightA weightB sizeA sizeB valueC |
	sizeA := (clusters at: foundA0) size asFloat.
	sizeB := (clusters at: foundB0) size asFloat.
	weightA := sizeA / (sizeA + sizeB).
	weightB := sizeB / (sizeA + sizeB).
	valueC := (self at: foundA0 and: foundB0)
		- (sizeA * sizeB / (sizeA + sizeB) squared).
	self
		privateLinkage:
			[:index0 :valueA :valueB | valueA * weightA + (valueB * weightB) - valueC]