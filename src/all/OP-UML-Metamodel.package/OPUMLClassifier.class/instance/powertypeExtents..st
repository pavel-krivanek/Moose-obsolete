accessing
powertypeExtents: aGeneralizationSet
	"The GeneralizationSet of which this Classifier is a power type."
	self powertypeExtents
		removeAll;
		addAll: aGeneralizationSet