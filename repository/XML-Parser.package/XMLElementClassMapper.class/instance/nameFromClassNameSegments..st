private
nameFromClassNameSegments: aNameSegmentCollection
	"avoid join: for Squeak/GS portability"
	^ String streamContents: [:stream |
		aNameSegmentCollection do: [:each | stream nextPutAll: each]]