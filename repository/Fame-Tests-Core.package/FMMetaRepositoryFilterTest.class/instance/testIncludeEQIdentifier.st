test-include-fameexamples
testIncludeEQIdentifier

	| repo names visitor |
	
	visitor := FMMetaRepositoryFilter new
		metaRepository: eqModel;
		classes: {eqModel descriptionOf: EQIdentifier}.
	visitor run.

	repo := visitor newMetaRepository.
	names := repo elements collect: #fullName.
	names should include: 'EQ'.
	names should include: 'EQ.Identifier'.
	
	names should not include: 'EQ.Expression'.
	names should not include: 'EQ.Equation'.
	names should not include: 'EQ.Variable'.
	names should not include: 'EQ.Compound'.
	names should not include: 'EQ.Simple'.
	names should not include: 'EQ.Numerical'.
	names should not include: 'EQ.Operator'.
	names should not include: 'EQ.EquationSystem'.