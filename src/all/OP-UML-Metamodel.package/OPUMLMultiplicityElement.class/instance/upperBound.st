operations
upperBound
	"The query upperBound() returns the upper bound of the multiplicity for a bounded multiplicity as an unlimited natural, which is the unlimitedNaturalValue of upperValue, if given, and 1, otherwise."
	
	"{OCL} result = (if (upperValue=null or upperValue.unlimitedValue()=null) then 1 else upperValue.unlimitedValue() endif)"
	
	^ (upperValue isNil or: [ upperValue unlimitedValue isNil ])
		ifTrue: [ 1 ]
		ifFalse: [ upperValue unlimitedValue ]
