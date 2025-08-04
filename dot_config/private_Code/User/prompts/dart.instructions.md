---
applyTo: '**/*.dart'
---
# Dart Instructions
- NEVER use code generation.
	- For example in riverpod, don't use `@riverpod` annotations.
- ALWAYS place each new widget in its own file.
- NEVER create large widgets.
	- ALWAYS break them down into smaller widgets.
	- NEVER use builder methods for part of the widget tree. INSTEAD, create a new widget.
- ALWAYS import symbols using `show`.
	- NEVER use `import 'package:foo/foo.dart'`
	- ALWAYS use `import 'package:foo/foo.dart' show Foo, Bar`.
	- If it makes, you MAY use `import 'package:foo/foo.dart' as foo`.
- ALWAYS use line length of 120.
	- ALWAYS use line length of infinity for dartdoc comments.
- `Color.withOpacity(double)` is deprecated.
	- INSTEAD, use `Color.withAlpha(int)` with the value between 0 and 255.
- NEVER try to run `flutter analyze`. The IDE is configured to show all the errors and warnings to you when you "check" the files.