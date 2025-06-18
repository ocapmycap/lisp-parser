Currently: we have a function, `parse`, that takes a string and returns a list of tokens.

This is sort of halfway between a lexer and a parser.

For interview activities, we could:

1. Parse the content into a proper AST, which we would need to define.

2. Check the input to determine if it is acceptable. (eg. matches braces in correct positions, etc.)

3. Check the input to determine if it is a valid expression. (eg. valid symbols, etc.)
 
