tests
testSourceTextShouldCallCompleteTextOnlyOneTime
	| anchor |
	anchor := self actualClass new
		startPos: 212;
		endPos: 250;
		yourself.
	anchor stub completeText
		willReturn: self sourceCodeForTest;
		useOnce.
	self shouldnt: [ anchor sourceText ] raise: Error