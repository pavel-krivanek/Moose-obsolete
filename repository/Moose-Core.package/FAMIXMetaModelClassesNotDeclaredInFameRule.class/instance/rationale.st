accessing
rationale

	^ 'check if a metamodel class is properly declared using a <MSEClass:super:> pragma. Additionally, this pragma should be in a #annotation class-side method, although this is not enforced. Default Moose tools are resilient with respect to metamodel descriptions, and accept as metamodel classes any subclass of MooseEntity. This rule enforces that all such classes are properly described in Fame, ensuring proper use by strict tools.'