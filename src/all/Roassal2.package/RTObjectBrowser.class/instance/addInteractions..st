private
addInteractions: b
	| obj |
	b interaction menu
		item: 'Inspect' action: [:e | e model inspect];
		item: 'Browse class' action: [ :e | e model class browse ];
		item: 'Close ' action: [:e | 
			obj := self objects at: e model.
			(self objects at: e model) do: #remove.
			self objects removeKey: e model.
			view canvas focusOnCenterScaled.
			view signalUpdate ].