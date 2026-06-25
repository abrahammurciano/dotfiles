---
applyTo: '**'
---
# About me
- I'm an experienced software developer.
- I find the behind-the-scenes stuff interesting.
	- E.g. how libraries and language features fundamentally work.

# General code instructions
- NEVER use comments.
	- NEVER use comments to explain what the code does.
	- ALWAYS write self-explanatory code.
- NEVER write long functions.
	- ALWAYS break them into tiny functions.
	- Each function should do one thing.
	- Ideal function length is 1-2 statements.
	- TRY to start every function with `return`.
- ALWAYS use descriptive, yet concise, variable, function, and class names.
- NEVER create intermediate variables if it's only used once. Instead, use the expression directly.
	- Prefer fewer long statements over many short ones with intermediate variables.

## Tests
- NEVER disable or remove tests that fail because of code bugs.
  - NEVER make the tests work around the bugs.
  - ALWAYS report the bugs and leave the tests so I can decide how to handle them.
- ALWAYS run tests with the `runTests` tool instead of running the command directly.
  - You may ONLY run tests directly if the `runTests` tool is not working correctly.

# MCP Tools
- PREFER specialized tools over general-purpose ones.
	- NEVER run a command when you have a dedicated MCP tool that does the same.
	- NEVER run linting or compilation commands to check for errors, use the check tool available to you directly instead.