*petitgui-accessing
displayName
	^ String streamContents: [ :stream | block sourceNode printOn: stream ]