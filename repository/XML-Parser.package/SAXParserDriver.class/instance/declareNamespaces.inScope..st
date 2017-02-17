private
declareNamespaces: aSequenceableCollection inScope: aScope
	1 to: aSequenceableCollection size do: [:i | | association |
		association := aSequenceableCollection at: i.
		(aScope resolvePrefix: association key) = association value
			ifFalse: [
				self saxHandler
					startPrefixMapping: association key
					uri: association value]].
	aScope mapPrefixesAndURIs: aSequenceableCollection.