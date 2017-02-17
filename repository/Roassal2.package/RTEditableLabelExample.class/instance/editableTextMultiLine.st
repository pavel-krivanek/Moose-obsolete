examples
editableTextMultiLine
	<gtExample>
	<label: 'Scalable multi-line text'>
	<description: 'Display some multi-line text that scales (instead of wrapping around) with its window'>
	
	"
	self new editableTextMultiLine.
	"
	| v shape |
	v := RTView new.
	1 to: 20 do: [ :i |
			shape := RTEditableLabel new.
			shape text: 
'Red 
Yellow
Green'.
			v add: shape element@RTDraggable.
	].
	RTGridLayout on: v elements.
	
	^ v