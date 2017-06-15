accessing
lineCount
	"Here is a speedup version of the #lineCount method for the IndexedFileAnchors.
	If we have the file of the entity, instead of reading the full file we can jump directly to the startPos in the stream of the file and read the characters until the endPos. 
	If it is a cr we increment a counter and we ignore a potential lf to manage crlf. If this is a lf, we increment if we are not after a cr."

	| file |
	^ (file := self fileReference) exists
		ifTrue: [ file
				readStreamDo: [ :s | 
					| count lfShouldBeCounted char |
					count := 1.
					lfShouldBeCounted := true.
					startPos - 1 timesRepeat: [ s next ].
					[ (char := s next asInteger) = 13
						ifTrue: [ count := count + 1.
							lfShouldBeCounted := false ]
						ifFalse: [ char = 10 & lfShouldBeCounted
								ifTrue: [ count := count + 1 ]
								ifFalse: [ lfShouldBeCounted := true ] ].
					s position < self endPos ] whileTrue.
					count ] ]
		ifFalse: [ super lineCount ]