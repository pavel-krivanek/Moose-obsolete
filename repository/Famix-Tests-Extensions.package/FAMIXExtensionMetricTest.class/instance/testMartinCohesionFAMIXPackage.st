tests
testMartinCohesionFAMIXPackage
	self assert: p1m1 martinCohesion equals: 1.0.	"i.e. (0+1)/1"
	self assert: p2m1 martinCohesion equals: 1.0.	"M1P2C3->M1P2C4 M1P2C3->M1P2C2"
	self assert: p1m2 martinCohesion equals: (10 / 9) asFloat.	"B1->A1 C1->A1 C1->D1 D1->E1 E1->C1 E1->D1 F1->E1 H1->G1 I1->G1"
	self assert: p2m2 martinCohesion equals: 0.5.
	self assert: p3m2 martinCohesion equals: 1.0.	"A3->C3 B3->C3"
	self assert: p4m2 martinCohesion equals: 0.5