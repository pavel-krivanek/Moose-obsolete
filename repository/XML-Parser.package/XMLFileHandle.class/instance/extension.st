accessing
extension
	"Returns the file extension, everything after the first '.' of the
	last path segment:
		'one.two/three.txt' asXMLFileHandle extension = 'txt'.
		'one.two/three.tar.gz' asXMLFileHandle extension = 'tar.gz'.
		'one.two/three.four/' asXMLFileHandle extension = ''.
	"
	| i |

	^ ((i := self path lastIndexOf: $/) > 0
		ifTrue: [self path copyFrom: i + 1 to: self path size]
		ifFalse: [self path]) copyAfter: $.