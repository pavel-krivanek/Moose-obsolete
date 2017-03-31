private
splitSpaceSeparatedIDs: anIDString into: anIDSet
	| startIndex|

	1 to: anIDString size do: [:i | | nextChar |
		(nextChar := anIDString at: i) isXMLSeparator
			ifTrue: [
				startIndex
					ifNotNil: [
						anIDSet add: (anIDString copyFrom: startIndex to: i - 1).
						startIndex := nil]]
			ifFalse: [
				startIndex
					ifNil: [startIndex := i]]].
	startIndex
		ifNotNil: [
			anIDSet add:
				(anIDString copyFrom: startIndex to: anIDString size)].