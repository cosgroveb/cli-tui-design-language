# CLI Design

## Command Trees

- `Convention-backed`: Use subcommands once the tool has multiple object types or operations. Keep names consistent across the tree. Avoid near-collisions like `update` and `upgrade`.
- `House style`: Prefer `noun verb` for deeper trees unless the product already has a strong `verb noun` precedent.
- `House style`: Do not create a subcommand level unless users need it to disambiguate real concepts.

## Naming

- `Standard-backed`: POSIX utility syntax favors lowercase names and single-character short options.
- `Convention-backed`: Provide long options for clarity and keep shared flags predictable: `--help`, `--version`, `--verbose`, `--output`.
- `House style`: Pick verbs that imply the real side effect. `show`, `list`, `get`, `apply`, `delete`, `prune`, and `repair` should not overlap.

## Help Text

- `Convention-backed`: Support `--help` and `--version`. Print them to `stdout` and exit successfully.
- `Convention-backed`: When a command is missing required arguments, print concise usage first, then the shortest path to success.
- `House style`: Help should answer three questions fast: what this command does, what it takes, and what it prints.
- `House style`: Examples belong near the end and should cover the common case before the exotic one.

## Flags And Arguments

- `Standard-backed`: Options should precede operands, `--` should stop option parsing, and option order should not matter unless documented otherwise.
- `Convention-backed`: Support `-` for stdin or stdout when the input or output is file-like.
- `Convention-backed`: Use ordinary arguments for primary inputs. Use `-o` or `--output` for output files.
- `House style`: Prefer booleans for behavior switches, arguments for values, and subcommands for materially different actions.

## Stdout And Stderr

- `Standard-backed`: Primary program output belongs on `stdout`. Diagnostics belong on `stderr`.
- `Convention-backed`: Keep progress meters, warnings, and advisory text off `stdout` so pipelines stay usable.
- `House style`: If a user can pipe it to another command, it belongs on `stdout`. If a user must read it, it probably belongs on `stderr`.

## Human And Machine Output

- `Convention-backed`: Default human output may optimize for readability. Machine output should be explicit and documented.
- `Convention-backed`: Stable machine modes should ignore user display settings like color and table width.
- `House style`: Treat only explicit modes like `--json`, `--yaml`, `--tsv`, or `--porcelain` as parse contracts.
- `House style`: Default tables are for scanning, not parsing.

## Prompts And Non-Interactive Behavior

- `Convention-backed`: Prompt only when `stdin` is a TTY.
- `Convention-backed`: In non-interactive mode, fail clearly instead of hanging on a prompt.
- `Convention-backed`: Provide an explicit prompt override such as `--yes`, `--force`, or `--no-input`.
- `House style`: A destructive action should be scriptable without fake keystrokes.

## Errors And Recovery

- `Convention-backed`: Validate early. Fail with clear messages.
- `Convention-backed`: Use `program: message` or `program: file:line: message` style errors in non-interactive output.
- `House style`: Say what failed, why it failed, and what the user can do next when the next step is obvious.
- `House style`: Do not make users read a paragraph to fix a typo in a flag.

## Progress And Long-Running Feedback

- `Convention-backed`: Show visible feedback quickly for long operations.
- `Convention-backed`: Put progress on `stderr`.
- `Convention-backed`: Suppress spinners and bars in non-TTY or machine-output contexts unless the user forces them on.
- `House style`: Favor progress messages that expose the current unit of work: `Pulling layer 3/7`, `Indexed 18,204 files`, `Retrying in 5s`.

## Color

- `Convention-backed`: If color is on by default, honor `NO_COLOR`.
- `Convention-backed`: `NO_COLOR` disables added color, not all styling.
- `House style`: If the tool can work without color, the default design should still read cleanly without it.
