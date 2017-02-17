tests
testDefault

	| dsm |
	dsm := RTDSM new.
	self assert: dsm numberOfObjects equals: 0