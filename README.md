# CLI TUI design language[^1]

This repo packages the same terminal design skill in two places:

- Claude plugin bundle
- `.agents` skill bundle

The source of truth is [`skills/cli-tui-design-language`](skills/cli-tui-design-language).

## Source files

- `SKILL.md`: entry point
- `cli-design.md`: CLI design notes
- `tui-design.md`: TUI design notes
- `accessibility.md`: terminal accessibility guidance
- `anti-patterns.md`: failure modes to reject
- `commands.md`: design workflow commands
- `examples.md`: concrete CLI and TUI examples
- `references.md`: sources and references

## Build

```bash
make dist
```

Run this only for a local check. CI owns `dist/`.

Build output:

- `dist/claude-plugin/.claude/skills/cli-tui-design-language`
- `dist/claude-plugin/.claude-plugin/{plugin.json,marketplace.json}`
- `dist/agents/.agents/skills/cli-tui-design-language`

## Editing

Edit these source files:

- `skills/cli-tui-design-language/**`
- `.claude-plugin/**`

GitHub Actions regenerates and commits `dist/` on pushes to `main`.

Pull requests fail if local source changes would produce different generated files.

## Scope

This repo covers terminal UX:

- CLI command trees
- command naming
- help text
- flags and arguments
- stdout and stderr
- human and machine output
- prompts and non-interactive behavior
- errors and recovery
- progress and long-running feedback
- TUI layout
- panes, tables, detail views
- navigation and keybindings
- focus, selection, mode visibility
- search, filter, status bars, empty states
- color and no-color behavior
- terminal accessibility

[^1]: Idea borrowed from [impeccable](https://github.com/pbakaus/impeccable).
