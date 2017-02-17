tests
testEfferentCouplingFAMIXPackage
	self assert: p1m1 efferentCoupling equals: 4.	"Object M2P6C13 M2P5C11 M1 P2C3"
	self assert: p2m1 efferentCoupling equals: 3.	"Object M3P7C14 M2P5C11"
	self assert: p1m2 efferentCoupling equals: 7.	"Object A2 B2  A3 B3 C3 A4"
	self assert: p2m2 efferentCoupling equals: 1.	"Object"
	self assert: p3m2 efferentCoupling equals: 1.	"Object"
	self assert: p4m2 efferentCoupling equals: 2	"Object A3"