utils
assertAction: action
	| tsystemWindows |
	(self itemsToExclude includes: action contents)
		ifTrue: [ ^ self ].
		
	tsystemWindows := self getAllWindows.
	[
		self 
			shouldnt: [([action doButtonAction] on: Notification do: [:ex | ])] 
			raise: Error
			description: action contents ]
		ensure: [(self getAllWindows copyWithoutAll: tsystemWindows) do: #delete.]