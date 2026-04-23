# TUI Design

## Layout

- `Standard-backed`: Keep ordinary workflows usable without forcing two-dimensional scrolling.
- `Convention-backed`: Put supporting detail in side panes or toggled regions instead of mixing it into the main work area.
- `Judgment-backed`: Each pane should do one thing. A pane that mixes navigation, status, and editing usually needs to be split.

## Panes, tables, and detail views

- `Standard-backed`: If keyboard input can enter a region, keyboard input must also be able to leave it.
- `Standard-backed`: Focus order should follow visible reading and work order.
- `Convention-backed`: Use one tab stop per composite region, then arrows inside it.
- `Convention-backed`: Keep focus separate from selection.
- `Judgment-backed`: In master-detail layouts, list movement should stay cheap and reversible. Opening details or running actions should be explicit unless preview is instant and harmless.

## Navigation

- `Standard-backed`: All functionality must be operable from keyboard alone.
- `Standard-backed`: Moving focus must not itself commit a context change.
- `Convention-backed`: Use `Tab` and `Shift+Tab` between major regions, arrows within lists, tables, trees, and menus.
- `Judgment-backed`: If panes are arranged spatially, spatial navigation should match the visible layout.

## Keybindings

- `Standard-backed`: Character-only shortcuts need an off switch, remapping, or tight focus scoping.
- `Convention-backed`: Reuse platform conventions where practical: `Ctrl+F` for search, `F1` for help.
- `Convention-backed`: Avoid system-reserved and assistive-technology-reserved shortcuts.
- `Judgment-backed`: Treat `Esc` as cancel, close, or leave mode when that meaning is available.

## Focus, selection, and mode visibility

- `Standard-backed`: Focus must stay visible.
- `Standard-backed`: Focused content must not be obscured by overlays, sticky bars, or transient UI.
- `Convention-backed`: Focus and selection need distinct visuals and behavior.
- `Judgment-backed`: Show the current mode in text and do not rely on color alone: `INSERT`, `SELECT`, `FILTER`, `SEARCH`, `READ-ONLY`.

## Search and filter

- `Convention-backed`: `Ctrl+F` is the safest cross-platform default for search in most desktop terminal environments.
- `Convention-backed`: Scope search clearly in multi-pane layouts.
- `Convention-backed`: Incremental search is a good default when results update quickly and empty results are obvious.
- `Judgment-backed`: Keep active filters visible while they affect results.

## Status bars

- `Convention-backed`: A status bar should report mode, scope, selection count, background activity, or errors without hiding focused content.
- `Judgment-backed`: Put durable state in the status bar. Put transient confirmations elsewhere or inline.
- `Judgment-backed`: If the status bar is critical, the same state should also be visible near the affected pane.

## Empty states

- `Convention-backed`: Empty states should explain the condition and the next action.
- `Judgment-backed`: Prefer inline empty-state messaging in the affected pane over global toasts.
- `Judgment-backed`: Treat empty results as a real state. Explain them instead of leaving blank space.

## Color and no-color behavior

- `Convention-backed`: Honor `NO_COLOR` if the TUI adds color by default.
- `Judgment-backed`: In no-color mode, preserve affordances with borders, markers, labels, spacing, and explicit text state.
- `Judgment-backed`: Design the monochrome pass on purpose. Do not treat it as an afterthought.
