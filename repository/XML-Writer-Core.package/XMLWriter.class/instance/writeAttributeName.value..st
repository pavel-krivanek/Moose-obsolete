private
writeAttributeName: aName value: aValue 
	self space.
	self
		writeName: aName
		escapedContentValue: aValue.