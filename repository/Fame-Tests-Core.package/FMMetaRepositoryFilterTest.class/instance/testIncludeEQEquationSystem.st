test-include-fameexamples
testIncludeEQEquationSystem

	| repo names visitor |
	
	visitor := FMMetaRepositoryFilter new
		metaRepository: eqModel;
		classes: {eqModel descriptionOf: EQEquationSystem}.
	visitor run.

	repo := visitor newMetaRepository.
	names := repo elements collect: #fullName.
	names should include: 'EQ'.
	names should include: 'EQ.Equation'.
	names should include: 'EQ.EquationSystem'.
	names should include: 'EQ.Variable'.
	names should include: 'EQ.Expression'.
	names should include: 'EQ.Identifier'.
	names should include: 'EQ.Compound'.
	names should include: 'EQ.Simple'.
	names should include: 'EQ.Numerical'.
	names should include: 'EQ.Operator'