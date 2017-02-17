accessing
setInteractions
	view canvas shapes do: [ :s | | list |
		list := TRPlatform current validInteractionsOf: s oklist: (Array with: #RTPopup).
		list do: [:pop | | interaction elements group |
			[
			interaction := RTSVGGroupPopup new.
			elements := pop createPopupFor: s element.
			interaction group: elements.
			group := interactions at: s ifAbsentPut: [ OrderedCollection new ].
			group add: interaction.
			] on: Error do: [ :ex| ] ] ].