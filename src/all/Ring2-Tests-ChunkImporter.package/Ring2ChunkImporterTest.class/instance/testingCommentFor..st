as yet unclassified
testingCommentFor: aClassName

	| comment commentToWrite|

	comment := 'I''m a nice comment!, treat me well :).'.
	commentToWrite := 'I''m a nice comment!!, treat me well :).' replaceAll: '!' with: '!!'.
	^ ('!{1} commentStamp: ''GuillermoPolito 5/2/2012 13:35'' prior: 0!{2}!' format: { aClassName. commentToWrite }).
