tests
testBunchCohesionFAMIXClassGroup
	| class1 class2 class3 class4 class5 class6 class7 class8 class9 class10 class11 class12 class13 class14 class15 class16 f |
	class1 := (p1m1 allClasses select: [ :each | each name = #M1P1C1FullReferencerOutSide ]) asArray at: 1.
	class2 := (p2m1 allClasses select: [ :each | each name = #M1P2C2ReferencerOutSideRefereeInSide ]) asArray at: 1.
	class3 := (p2m1 allClasses select: [ :each | each name = #M1P2C3ReferencerInSideRefereeOutSide ]) asArray at: 1.
	class4 := (p2m1 allClasses select: [ :each | each name = #M1P2C4FullRefereeInSide ]) asArray at: 1.
	f := FAMIXTypeGroup new.
	f add: class1.
	self assert: f bunchCohesion equals: 1.0.
	f := FAMIXTypeGroup new.
	f
		add: class2;
		add: class3;
		add: class4.
	self assert: f bunchCohesion equals: (3 / 9) asFloat.
	f := FAMIXTypeGroup new.
	f
		add: class1;
		add: class2;
		add: class3;
		add: class4.
	self assert: f bunchCohesion equals: (5 / 16) asFloat.
	class1 := (p1m2 allClasses select: [ :each | each name = #A1 ]) asArray at: 1.
	class2 := (p1m2 allClasses select: [ :each | each name = #B1 ]) asArray at: 1.
	class3 := (p1m2 allClasses select: [ :each | each name = #C1 ]) asArray at: 1.
	class4 := (p1m2 allClasses select: [ :each | each name = #D1 ]) asArray at: 1.
	class5 := (p1m2 allClasses select: [ :each | each name = #E1 ]) asArray at: 1.
	class6 := (p1m2 allClasses select: [ :each | each name = #F1 ]) asArray at: 1.
	class7 := (p1m2 allClasses select: [ :each | each name = #G1 ]) asArray at: 1.
	class8 := (p1m2 allClasses select: [ :each | each name = #H1 ]) asArray at: 1.
	class9 := (p1m2 allClasses select: [ :each | each name = #I1 ]) asArray at: 1.
	class10 := (p2m2 allClasses select: [ :each | each name = #A2 ]) asArray at: 1.
	class11 := (p2m2 allClasses select: [ :each | each name = #B2 ]) asArray at: 1.
	class12 := (p3m2 allClasses select: [ :each | each name = #A3 ]) asArray at: 1.
	class13 := (p3m2 allClasses select: [ :each | each name = #B3 ]) asArray at: 1.
	class14 := (p3m2 allClasses select: [ :each | each name = #C3 ]) asArray at: 1.
	class15 := (p4m2 allClasses select: [ :each | each name = #A4 ]) asArray at: 1.
	class16 := (p4m2 allClasses select: [ :each | each name = #B4 ]) asArray at: 1.
	f := FAMIXTypeGroup new.
	f
		add: class1;
		add: class2;
		add: class3;
		add: class4;
		add: class5;
		add: class6;
		add: class7;
		add: class8;
		add: class9.
	self assert: f bunchCohesion equals: (9 / 81) asFloat.
	f := FAMIXTypeGroup new.
	f
		add: class10;
		add: class11.
	self assert: f bunchCohesion equals: 0.0.
	f := FAMIXTypeGroup new.
	f
		add: class12;
		add: class13;
		add: class14.
	self assert: f bunchCohesion equals: (2 / 9) asFloat.
	f := FAMIXTypeGroup new.
	f
		add: class15;
		add: class16.
	self assert: f bunchCohesion equals: 0.0.
	f := FAMIXTypeGroup new.
	f
		add: class1;
		add: class2;
		add: class3;
		add: class4;
		add: class5;
		add: class6;
		add: class7;
		add: class8;
		add: class9;
		add: class10;
		add: class11.
	self assert: f bunchCohesion equals: (11 / 121) asFloat.
	f := FAMIXTypeGroup new.
	f
		add: class12;
		add: class13;
		add: class14;
		add: class15;
		add: class16.
	self assert: f bunchCohesion equals: (3 / 25) asFloat