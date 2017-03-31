*petitanalyzer-private
followSets: aFollowDictionary firstSets: aFirstDictionary into: aSet
	"PRIVATE: Try to add additional elements to the follow-set aSet of the receiver, use the incomplete aFollowDictionary and the complete aFirstDictionary."
	
	self children do: [ :parser | (aFollowDictionary at: parser) addAll: aSet ]