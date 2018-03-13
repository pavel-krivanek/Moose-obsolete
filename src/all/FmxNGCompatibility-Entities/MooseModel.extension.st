Extension { #name : #MooseModel }

{ #category : #'*FmxNGCompatibility-Entities' }
MooseModel >> detectEncodingOfAllFileAnchors [
	"I can be execute to reduce the time of detection of the encoding of each file anchor because multiple file anchor can point to the same file."

	(((self allWithSubTypesOf: FmxNGAbstractFileAnchor) asOrderedCollection reject: #privateHasEncoding) groupedBy: #fileName)
		valuesDo: [ :anchors | 
			| encoding |
			encoding := anchors anyOne detectEncoding.
			anchors do: [ :anchor | anchor encoding: encoding ] ]
]

{ #category : #'*FmxNGCompatibility-Entities' }
MooseModel class >> resetMeta [
	"self resetMeta"

	FmxNGEntity resetMSEProperties.
	FmxNGNamedEntity resetMSEProperties.
	
	metaTower := nil.
	^self meta
	
]
