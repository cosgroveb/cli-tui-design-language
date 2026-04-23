---
name: cli-tui-design-language
description: Design and critique terminal software, including CLI command trees, help text, output streams, prompts, errors, progress, TUI layout, keybindings, search, status bars, no-color behavior, and accessibility.
---

Use this skill for terminal UX work. If the problem is general app UX, use a different skill.

- Start with [cli-design.md](cli-design.md) for command trees, naming, help, flags, streams, machine modes, prompts, errors, and progress.
- Use [tui-design.md](tui-design.md) for panes, tables, detail views, navigation, keybindings, focus, search, status bars, and empty states.
- Check [accessibility.md](accessibility.md) for keyboard use, focus visibility, contrast, no-color behavior, and terminal-specific accessibility constraints.
- Read [anti-patterns.md](anti-patterns.md) before polishing output. It covers common terminal UX mistakes.
- Pull from [examples.md](examples.md) when you need concrete help text, output, status, or layout examples.
- Use [commands.md](commands.md) for quick design passes.
- Check [references.md](references.md) when you need to confirm whether a rule is standard-backed, convention-backed, or judgment-backed.

- Keep CLI and TUI guidance separate when their tradeoffs differ.
- Treat machine-readable output as an explicit contract.
- Put human messaging on `stderr`, primary output on `stdout`.
- Do not depend on color alone for state, focus, or severity.
- Keep focus, selection, and mode visibly distinct.
- Label each rule as `Standard-backed`, `Convention-backed`, or `Judgment-backed`.
