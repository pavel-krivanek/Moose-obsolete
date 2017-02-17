parsing
parsePathSegments
	| pathSegments segment |

	pathSegments := OrderedCollection new.

	segment := self nextDelimitedBy: PathDelimiters.
	[self peekFor: $/]
		whileTrue: [
			pathSegments addLast: segment.
			segment := self nextDelimitedBy: PathDelimiters].
	(pathSegments isEmpty
		and: [segment isEmpty])
		ifFalse: [pathSegments addLast: segment].

	^ pathSegments.