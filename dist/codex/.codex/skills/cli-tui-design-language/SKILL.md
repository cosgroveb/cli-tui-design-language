---
name: cli-tui-design-language
description: Design and critique terminal software. Use for CLI command trees, help text, flags, stdout and stderr behavior, human and machine output, prompts, errors, progress, TUI layout, keybindings, focus, search, status bars, no-color behavior, and terminal accessibility.
---

Use this skill when the work is terminal UX, not generic app UX.

- Read [cli-design.md](cli-design.md) for command trees, naming, help, flags, streams, machine modes, prompts, errors, and progress.
- Read [tui-design.md](tui-design.md) for panes, tables, detail views, navigation, keybindings, focus, search, status bars, and empty states.
- Read [accessibility.md](accessibility.md) for keyboard use, focus visibility, contrast, no-color behavior, and terminal-specific accessibility constraints.
- Read [anti-patterns.md](anti-patterns.md) before polishing output. It captures common terminal UX failures.
- Read [examples.md](examples.md) when the design needs concrete help text, output, status, or layout examples.
- Read [commands.md](commands.md) when you need a fast design pass.
- Read [references.md](references.md) when you need to check what is standard-backed, convention-backed, or house style.

Core doctrine:

- Keep CLI and TUI guidance separate when their tradeoffs differ.
- Treat machine-readable output as an explicit contract.
- Put human messaging on `stderr`, primary output on `stdout`.
- Do not depend on color alone for state, focus, or severity.
- Keep focus, selection, and mode visibly distinct.
- Label standards as standards, conventions as conventions, and house style as house style.
