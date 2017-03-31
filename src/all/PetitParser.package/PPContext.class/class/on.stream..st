as yet unclassified
on: aPPParser stream: aStream
	^ self basicNew 
		initialize;
		root: aPPParser;
		stream: aStream asPetitStream;
		yourself