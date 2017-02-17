removing
removeAll: elementCollection

	elementCollection do: [
		:each |
		self remove: each.
	]

	"elements removeAll: elementCollection (without postRemove)"