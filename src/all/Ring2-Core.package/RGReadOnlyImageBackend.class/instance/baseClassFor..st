metaclass
baseClassFor: anRGMetaclassTrait

	^ (self realBehaviorFor: anRGMetaclassTrait) baseClass asRingMinimalDefinitionIn: anRGMetaclassTrait environment.