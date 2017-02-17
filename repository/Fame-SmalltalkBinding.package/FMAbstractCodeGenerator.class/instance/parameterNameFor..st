compiling-names
parameterNameFor: fameProperty
	| name stream |
	name := fameProperty name.
	stream := (String new: name size + 3) writeStream.
	stream nextPut: $a.
	(name first isVowel) ifTrue: [ stream nextPut: $n ].
	stream nextPut: name first asUppercase.
	stream next: name size - 1 putAll: name startingAt: 2.
	^stream contents.