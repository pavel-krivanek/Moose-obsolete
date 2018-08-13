ast := (RBParser parseExpression: 'Trait1 + Trait2 + Trait3 + Trait4').
ast := (RBParser parseExpression: '(Trait2 - {#c})').
ast := (RBParser parseExpression: 'Trait1 + (Trait2 - {#c})').
ast := (RBParser parseExpression: 'Trait1 + (Trait2 - {#c}) + Trait3').
ast := (RBParser parseExpression: 'Trait1 + (Trait2 - #(c ahoj bla: bla:bla:)) + Trait3').

composition := RGTraitComposition unnamed.

visitor := RGTraitCompositionVisitor new.
visitor traitComposition: composition.
ast acceptVisitor: visitor.




