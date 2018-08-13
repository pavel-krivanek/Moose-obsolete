as yet unclassified
testingHistoricalCommentFor: aClassName

	| comment commentToWrite|

	comment := 'I''m a nice comment!, treat me well :).'.
	commentToWrite := 'I''m a nice comment!!, treat me well :).' replaceAll: '!' with: '!!'.
	^ ('!{1} commentStamp: ''<historical>'' prior: 0!{2}!' format: { aClassName. commentToWrite }).
