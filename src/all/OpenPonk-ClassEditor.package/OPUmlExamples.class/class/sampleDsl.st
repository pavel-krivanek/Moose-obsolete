samples
sampleDsl
	^ OPUmlDslParser
		parse:
			'Person {
    name : String
    contact: Contact[1..*]
}

Teacher {
    gradeTests:(test: Test[*]): Number[*]
}

Teacher extends Role;
Student >> Role;
President >> Role;

Person --> roles Role[*];

President president --- university University;
University[1] university <*>-- departments Department[*];
Department[*] memberOf <>-- teachers Teacher[*];'