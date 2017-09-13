operations - stubs
allSlottableFeaturesStub
	"All StructuralFeatures related to the Classifier that may have Slots, including direct attributes, inherited attributes, private attributes in generalizations, and memberEnds of Associations, but excluding redefined StructuralFeatures."
	
	"{OCL} result = (member->select(oclIsKindOf(StructuralFeature))->
  collect(oclAsType(StructuralFeature))->
   union(self.inherit(self.allParents()->collect(p | p.attribute)->asSet())->
     collect(oclAsType(StructuralFeature)))->asSet())"
	
	self notYetImplemented
