trait composition
transformationsFor: anRGTraitComposition do: aBlock

	| realBehavior realTraitComposition |
	"^ anRGTraitComposition pvtTransformationsDo: aBlock"

	realBehavior := self realBehaviorFor: anRGTraitComposition parent.
	realTraitComposition := realBehavior traitComposition.

	realTraitComposition transformations do: [:transformation |
		| def |
		def := self definitionFor: transformation ifAbsentRegister: [
			transformation asRingMinimalDefinitionIn: anRGTraitComposition environment].
		aBlock value: def]
