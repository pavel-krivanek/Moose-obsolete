*petitanalyzer-private
firstSets: aFirstDictionary into: aSet
	"PRIVATE: Try to add additional elements to the first-set aSet of the receiver, use the incomplete aFirstDictionary."

	self children do: [ :parser | aSet addAll: (aFirstDictionary at: parser) ]