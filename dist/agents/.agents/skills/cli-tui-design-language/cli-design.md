# CLI Design

## Command trees

- `Convention-backed`: Use subcommands once the tool has multiple object types or operations. Keep names consistent across the tree. Avoid near-collisions such as `update` and `upgrade`.
- `Judgment-backed`: Prefer `noun verb` for deeper trees unless the product already has a strong `verb noun` precedent.
- `Judgment-backed`: Do not create a subcommand level unless users need it to disambiguate real concepts.

## Naming

- `Standard-backed`: POSIX utility syntax favors lowercase names and single-character short options.
- `Convention-backed`: Provide long options for clarity and keep shared flags predictable: `--help`, `--version`, `--verbose`, `--output`.
- `Judgment-backed`: Pick verbs that imply the real side effect. `show`, `list`, `get`, `apply`, `delete`, `prune`, and `repair` should mean different things.

## Help text

- `Convention-backed`: Support `--help` and `--version`. Print them to `stdout` and exit successfully.
- `Convention-backed`: When a command is missing required arguments, print concise usage first, then the exact command shape that works.
- `Judgment-backed`: Help should say what the command does, what it takes, and what it prints.
- `Judgment-backed`: Examples belong near the end and should cover the common case before the exotic one.

## Flags and arguments

- `Standard-backed`: Options should precede operands, `--` should stop option parsing, and option order should not matter unless documented otherwise.
- `Convention-backed`: Support `-` for stdin or stdout when the input or output is file-like.
- `Convention-backed`: Use ordinary arguments for primary inputs. Use `-o` or `--output` for output files.
- `Judgment-backed`: Use booleans for behavior switches, arguments for values, and subcommands for materially different actions.

## stdout and stderr

- `Standard-backed`: Primary program output belongs on `stdout`. Diagnostics belong on `stderr`.
- `Convention-backed`: Keep progress meters, warnings, and advisory text off `stdout` so pipelines stay usable.
- `Judgment-backed`: If a user can pipe it to another command, put it on `stdout`. If a user must read it before acting, put it on `stderr`.

## Human and machine output

- `Convention-backed`: Default human output can favor readability. Machine output should be explicit and documented.
- `Convention-backed`: Stable machine modes should ignore user display settings like color and table width.
- `Judgment-backed`: Only explicit modes like `--json`, `--yaml`, `--tsv`, or `--porcelain` are parse contracts.
- `Judgment-backed`: Default tables help people scan output. Machine contracts should stay opt-in.

## Prompts and non-interactive behavior

- `Convention-backed`: Prompt only when `stdin` is a TTY.
- `Convention-backed`: In non-interactive mode, fail clearly instead of hanging on a prompt.
- `Convention-backed`: Provide an explicit prompt override such as `--yes`, `--force`, or `--no-input`.
- `Judgment-backed`: Destructive actions should be scriptable without fake keystrokes.

## Errors and recovery

- `Convention-backed`: Validate early. Fail with clear messages.
- `Convention-backed`: Use `program: message` or `program: file:line: message` style errors in non-interactive output.
- `Judgment-backed`: State the failure, the cause, and the next obvious step.
- `Judgment-backed`: Do not make users read a paragraph to fix a typo in a flag.

## Progress and long-running feedback

- `Convention-backed`: Show visible feedback quickly for long operations.
- `Convention-backed`: Put progress on `stderr`.
- `Convention-backed`: Suppress spinners and bars in non-TTY or machine-output contexts unless the user forces them on.
- `Judgment-backed`: Prefer progress messages that show the current unit of work: `Pulling layer 3/7`, `Indexed 18,204 files`, `Retrying in 5s`.

## Color

- `Convention-backed`: If color is on by default, honor `NO_COLOR`.
- `Convention-backed`: `NO_COLOR` disables added color, not all styling.
- `Judgment-backed`: If the tool can work without color, the default design should still read cleanly that way.
