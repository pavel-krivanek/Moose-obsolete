tests
testDatePatternAsRegex

	| importing |

	importing := MooseHismoImportingStrategy new.
	
	importing datePattern: 'dd-mm-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'dd-m-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'd-mm-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'd-m-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'dd-mm-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.
	importing datePattern: 'dd-m-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.
	importing datePattern: 'd-mm-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.
	importing datePattern: 'd-m-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.

	importing datePattern: 'mm-dd-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'm-dd-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'mm-d-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'm-d-yyyy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d\d\d'.
	importing datePattern: 'mm-dd-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.
	importing datePattern: 'm-dd-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.
	importing datePattern: 'mm-d-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.
	importing datePattern: 'm-d-yy'.
	self assert: importing datePatternAsRegex =  '\d?\d-\d?\d-\d\d'.

	importing datePattern: 'yyyy-mm-dd'.
	self assert: importing datePatternAsRegex =  '\d\d\d\d-\d?\d-\d?\d'.
	importing datePattern: 'yyyy-mm-d'.
	self assert: importing datePatternAsRegex =  '\d\d\d\d-\d?\d-\d?\d'.
	importing datePattern: 'yyyy-m-dd'.
	self assert: importing datePatternAsRegex =  '\d\d\d\d-\d?\d-\d?\d'.
	importing datePattern: 'yyyy-m-d'.
	self assert: importing datePatternAsRegex =  '\d\d\d\d-\d?\d-\d?\d'.
	importing datePattern: 'yy-mm-dd'.
	self assert: importing datePatternAsRegex =  '\d\d-\d?\d-\d?\d'.
	importing datePattern: 'yy-mm-d'.
	self assert: importing datePatternAsRegex =  '\d\d-\d?\d-\d?\d'.
	importing datePattern: 'yy-mm-dd'.
	self assert: importing datePatternAsRegex =  '\d\d-\d?\d-\d?\d'.
	importing datePattern: 'yy-m-d'.
	self assert: importing datePatternAsRegex =  '\d\d-\d?\d-\d?\d'.