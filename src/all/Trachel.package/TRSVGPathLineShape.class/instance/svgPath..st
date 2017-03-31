accessing
svgPath: aString
	| converter |
	converter := ASPathConverter new stream: aString readStream.
	pathCommands := converter convertPathData