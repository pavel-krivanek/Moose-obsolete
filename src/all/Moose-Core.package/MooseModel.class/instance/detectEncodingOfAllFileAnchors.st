actions
detectEncodingOfAllFileAnchors
	"I can be execute to reduce the time of detection of the encoding of each file anchor because multiple file anchor can point to the same file."

	(((self allWithSubTypesOf: FAMIXAbstractFileAnchor) asOrderedCollection reject: #privateHasEncoding) groupedBy: #fileName)
		valuesDo: [ :anchors | 
			| encoding |
			encoding := anchors anyOne detectEncoding.
			anchors do: [ :anchor | anchor encoding: encoding ] ]