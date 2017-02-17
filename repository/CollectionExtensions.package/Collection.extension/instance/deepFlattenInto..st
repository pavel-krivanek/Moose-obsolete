*CollectionExtensions
deepFlattenInto: stream

	self do: [ :each | each deepFlattenInto: stream ]