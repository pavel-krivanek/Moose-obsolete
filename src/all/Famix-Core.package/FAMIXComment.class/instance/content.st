accessing
content
	"Be careful. Do not get my content via this method because it is possible that I don't have my content in this property but I can have it via a sourceAnchor."

	<MSEProperty: #content type: #String>
	<MSEComment: 'Content of the comment as a String'>
	^ self privateState attributeAt: #content ifAbsent: [  ]