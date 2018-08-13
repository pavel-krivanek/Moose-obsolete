tests
testTime

	"TODO: improve"
	self assert: (RGStampParser parseTimestampFrom: '11/10/2015 18:13') equals: '2015-11-10T18:13:00' asDateAndTime.
	
