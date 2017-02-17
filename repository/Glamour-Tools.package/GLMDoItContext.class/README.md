This offers support for a do it context.

Example:
context := GLMContext withAll: {#a -> 1 . #b -> 2}.
Compiler new evaluate: 'a + b' in: context to: context