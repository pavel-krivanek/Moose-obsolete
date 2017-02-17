buidling-models
buildEQ

	| builder |
	
	builder := FMPragmaProcessor new.
	builder queue: (OrderedCollection new
		add: EQCompound;
		add: EQEquation;
		add: EQEquationSystem;
		add: EQExpression;
		add: EQIdentifier;
		add: EQNumerical;
		add: EQOperator;
		add: EQSimple;
		add: EQVariable; 
		yourself).
	builder run.
	^ builder asMetamodel 