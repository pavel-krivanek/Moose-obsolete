private
classNameSegmentsFrom: aString
	| nameSegments startIndex |

	nameSegments := OrderedCollection new.
	startIndex := 1.
	1 to: aString size do: [:i |
		(((aString at: i) isLowercase
			and: [aString size >= (i + 1)
				and: [(aString at: i + 1) isLowercase not]])
			or: [
				((aString at: i) isUppercase
					and: [aString size >= (i + 2)
						and: [(aString at: i + 1) isUppercase
							and: [(aString at: i + 2) isUppercase not]]])])
			ifTrue: [
				nameSegments addLast:
					(aString
						copyFrom: startIndex
						to: i).
				startIndex := i + 1]].

	startIndex <= aString size
		ifTrue: [
			nameSegments addLast:
				(aString
					copyFrom: startIndex
					to: aString size)].

	^ nameSegments.