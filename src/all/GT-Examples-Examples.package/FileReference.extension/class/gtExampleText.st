*GT-Examples-Examples
gtExampleText
	<gtExample>
	^ FileSystem memory workingDirectory / 'sample.txt' 
		writeStreamDo: [ :stream |
			stream nextPutAll: self comment ];
		yourself