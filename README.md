# CLI TUI Design Language

This repo contains the source for one terminal design skill and packages it for two targets:

- Claude plugin bundle
- `.agents` skill bundle

The source of truth is [`skills/cli-tui-design-language`](skills/cli-tui-design-language).

## Source Files

- `SKILL.md`: entry point
- `cli-design.md`: CLI design guidance
- `tui-design.md`: TUI design guidance
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

Only edit the source files here:

- `skills/cli-tui-design-language/**`
- `.claude-plugin/**`

GitHub Actions regenerates and commits `dist/` on pushes to `main`.

Pull requests check that `make dist` produces the expected output and that generated files stay in sync with the source.

## Scope

This repo is only for terminal UX:

- CLI command trees
- command naming
- help text
- flags and arguments
- stdout vs stderr
- human vs machine output
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
