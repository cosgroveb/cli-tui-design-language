# TUI Design

## Layout

- `Standard-backed`: Keep ordinary workflows usable without forcing two-dimensional scrolling.
- `Convention-backed`: Put supporting detail in side panes or toggled regions instead of mixing it into the main work area.
- `House style`: Give every pane one job. A pane that mixes navigation, status, and editing usually needs to split.

## Panes, Tables, And Detail Views

- `Standard-backed`: If keyboard can enter a region, keyboard must also be able to leave it.
- `Standard-backed`: Focus order should follow visible reading and work order.
- `Convention-backed`: Use one tab stop per composite region, then arrows inside it.
- `Convention-backed`: Keep focus separate from selection.
- `House style`: In master-detail layouts, list movement should stay cheap and reversible. Opening or committing detail actions should be explicit unless preview is instant and harmless.

## Navigation

- `Standard-backed`: All functionality must be operable from keyboard alone.
- `Standard-backed`: Moving focus must not itself commit a context change.
- `Convention-backed`: Use `Tab` and `Shift+Tab` between major regions, arrows within lists, tables, trees, and menus.
- `House style`: If panes are spatially arranged, spatial navigation should match the visible layout.

## Keybindings

- `Standard-backed`: Character-only shortcuts need an off switch, remapping, or tight focus scoping.
- `Convention-backed`: Reuse platform conventions where practical: `Ctrl+F` for search, `F1` for help.
- `Convention-backed`: Avoid system-reserved and assistive-technology-reserved shortcuts.
- `House style`: Treat `Esc` as cancel, close, or leave-mode when that meaning is available.

## Focus, Selection, And Mode Visibility

- `Standard-backed`: Focus must stay visible.
- `Standard-backed`: Focused content must not be obscured by overlays, sticky bars, or transient UI.
- `Convention-backed`: Focus and selection need distinct visuals and behavior.
- `House style`: Always show current mode in text, not color alone: `INSERT`, `SELECT`, `FILTER`, `SEARCH`, `READ-ONLY`.

## Search And Filter

- `Convention-backed`: `Ctrl+F` is the best cross-platform default for search.
- `Convention-backed`: Scope search clearly in multi-pane layouts.
- `Convention-backed`: Incremental search is a good default when results update quickly and empty results are obvious.
- `House style`: Keep active filters visible while they affect the result set.

## Status Bars

- `Convention-backed`: A status bar should report mode, scope, selection count, background activity, or errors without hiding focused content.
- `House style`: Put durable state in the status bar. Put transient confirmations elsewhere or inline.
- `House style`: If the status bar is critical, the same state should also be visible near the affected pane.

## Empty States

- `Convention-backed`: Empty states should explain the condition and the next action.
- `House style`: Prefer inline empty-state messaging in the affected pane over global toasts.
- `House style`: Empty is a state, not a blank hole in the screen.

## Color And No-Color Behavior

- `Convention-backed`: Honor `NO_COLOR` if the TUI adds color by default.
- `House style`: In no-color mode, preserve affordances with borders, markers, labels, spacing, and explicit text state.
- `House style`: Design the monochrome pass on purpose. Do not treat it as a degraded afterthought.
