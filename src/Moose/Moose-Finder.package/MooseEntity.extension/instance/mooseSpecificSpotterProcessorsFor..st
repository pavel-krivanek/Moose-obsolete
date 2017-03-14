*Moose-Finder
mooseSpecificSpotterProcessorsFor: aSpotterStep
	| entity assocs pragmaValueAssociations |
	entity := self mooseInterestingEntity.
	pragmaValueAssociations := entity complexPropertyPragmas
		collect: [ :pragma | 
			pragma
				->
					(self mooseInterestingEntity perform: pragma methodSelector)
						mooseInterestingEntity ].
	assocs := (pragmaValueAssociations
		reject: [ :association | 
			association value isNil
				or: [ association value isCollection and: [ association value isEmpty ] ] ])
		sorted: [ :a :b | 
			(a key argumentAt: 1) asLowercase asString
				< (b key argumentAt: 1) asLowercase asString ].
	assocs
		do: [ :assoc | 
			aSpotterStep listProcessor
				allCandidates: [ assoc value asMooseGroup ];
				title: (assoc key argumentAt: 1);
				itemIcon: #mooseIcon;
				filter: GTFilterSubstring;
				itemName: #mooseDisplayString;
				order: 1 ]