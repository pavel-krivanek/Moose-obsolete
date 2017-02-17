actions
notifyPartsMightHaveChanged

	"this method will iterate over all the parts in the pane and notify them that their contents might have been changed"
	wizardParts do: [:each |
		each mightHasChanged
		]