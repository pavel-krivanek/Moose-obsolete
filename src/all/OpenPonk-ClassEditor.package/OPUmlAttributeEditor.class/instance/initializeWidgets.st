initialization
initializeWidgets
	(noDefaultRadio := self newRadioButton) label: 'No initial value' asText.
	noDefaultRadio label addAttribute: TextColor red.
	noDefaultRadio label addAttribute: TextAlignment rightFlush.
	noDefaultRadio
		whenBuiltDo: [ :widget | widget widget labelMorph hResizing: #shrinkWrap ].
	(numberRadio := self newRadioButton) label: 'Number'.
	(booleanRadio := self newRadioButton) label: 'Boolean'.
	(stringRadio := self newRadioButton) label: 'String'.
	(collectionRadio := self newRadioButton) label: 'Collection'.
	(codeRadio := self newRadioButton) label: 'Code'.
	(numberInput := self newTextInput) autoAccept: true.
	(unitLabel := self newLabel) label: 'Unit'.
	(unitInput := self newTextInput) autoAccept: true.
	(booleanSelect := self newDropList) items: #(true false).
	(stringInput := self newTextInput) autoAccept: true.
	(collectionSelect := self newDropList)
		displayBlock: [ :item | item asString ];
		items: #(#Bag #Dictionary #OrderedCollection #Set).
	(codeInput := self newTextInput) autoAccept: true.
	self setRadioGroup