As yet unclassified
modelString

^'(
    (EQ.EquationSystem
        (equations
            (EQ.Equation
                (leftHandSide 
                    (EQ.Variable 
                        (identifier (ref: 1))))    
                (rightHandSide 
                    (EQ.Compound 
                        (op (ref: 10))
                        (args (ref: 2) (ref: 3)))))
            (EQ.Equation
                (leftHandSide 
                    (EQ.Variable 
                        (identifier (ref: 2))))    
                (rightHandSide 
                    (EQ.Compound 
                        (op (ref: 10))
                        (args (ref: 5) 
                            (EQ.Compound 
                                (op (ref: 10))
                                (args (ref: 3) (ref: 1)))))))
            (EQ.Equation
                (leftHandSide 
                    (EQ.Variable 
                        (identifier (ref: 3))))    
                (rightHandSide 
                    (EQ.Compound 
                        (op (ref: 10))
                        (args (ref: 5) 
                            (EQ.Compound 
                                (op (ref: 20))
                                (args (ref: 77) (ref: 55)))))))))
    (EQ.Operator (id: 10) (symbol ''+''))
    (EQ.Operator (id: 20) (symbol ''*''))
    (EQ.Identifier (id: 1) (symbol ''X1''))
    (EQ.Identifier (id: 3) (symbol ''X3''))
    (EQ.Identifier (id: 5) (symbol ''X5''))
    (EQ.Identifier (id: 2) (symbol ''X2''))
    (EQ.Numerical (id: 55) (number 5))
    (EQ.Numerical (id: 77) (number 7))                    
)'