private
start
	| leafs |
	stream := StandardFileStream forceNewFileNamed: spec root label, '.xml'.
	stream ascii.
	stream nextPutAll: '<?xml version="1.0" encoding="UTF-8"?>'; lf.
	leafs := spec root allLeafConcerns.
	stream 
		nextPutAll: '<testsuite name="'; 
			nextPutAll: (self encode: spec root label); 
			nextPutAll: '" tests="'; print: leafs size; nextPutAll: '"';
			nextPutAll: ' failures="'; print: (leafs count: [:each | each status isFailureStatus]); 
			nextPutAll:'" errors="0'; 
			nextPutAll: '" time="';print: 0; 
		nextPutAll: '">';
		lf