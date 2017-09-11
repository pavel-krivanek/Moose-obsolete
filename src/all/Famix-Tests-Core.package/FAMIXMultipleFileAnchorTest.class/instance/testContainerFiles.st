tests
testContainerFiles
	| anchor file1 file2 |
	anchor := self actualClass new
		addSourceAnchor:
			(FAMIXFileAnchor new
				correspondingFile:
					(file1 := FAMIXFile new
						name: 'test';
						yourself);
				yourself);
		addSourceAnchor:
			(FAMIXFileAnchor new
				correspondingFile:
					(file2 := FAMIXFile new
						name: 'test2';
						yourself);
				yourself);
		yourself.
	self assert: anchor containerFiles size equals: 2.
	(anchor containerFiles collect: #name) do: [ :fileName | self assert: (#('test' 'test2') includes: fileName) ]