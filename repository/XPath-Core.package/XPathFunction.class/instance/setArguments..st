initialization
setArguments: aSequenceableCollection
	"ensure there aren't too many or too few"
	aSequenceableCollection size < self minArguments
		ifTrue: [
			self
				errorRequiresAtLeast: self minArguments
				argumentsButGot: aSequenceableCollection size].
	(self maxArguments notNil
		and: [aSequenceableCollection size > self maxArguments])
		ifTrue: [
			self
				errorAcceptsAtMost: self maxArguments
				argumentsButGot: aSequenceableCollection size].

	"convert them to the appropriate type (use to:do: for speed)"
	1 to: aSequenceableCollection size do: [:i |
		aSequenceableCollection
			at: i
			put:
				((self argumentTypeAt: i) newFrom:
					(aSequenceableCollection at: i))].

	arguments := aSequenceableCollection asArray.