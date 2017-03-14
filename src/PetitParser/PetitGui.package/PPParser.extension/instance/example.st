*petitgui-accessing
example
	^ String streamContents: [ :stream | self exampleOn: stream ] limitedTo: 1024