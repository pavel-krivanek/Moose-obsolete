A PPConditionalParser is a delegate parser that evaluates a block and if that returns true, the delegate parser is invoked and its result returned. If the block evaluates to false, the PPFailure is returned.

The block accepts one argument, context.

E.g.
    ('a' asParser if: [ :ctx | (ctx propertyAt: #myProperty) isNotNil ]) parse: 'a'