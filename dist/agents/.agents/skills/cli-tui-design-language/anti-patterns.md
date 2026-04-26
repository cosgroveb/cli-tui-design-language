# Anti-Patterns

Reject these by default.

## CLI

- Printing human chatter, progress, or warnings on `stdout`.
- Making the default table output the only way to get structured data.
- Prompting in a non-TTY context.
- Showing a spinner in `--json` mode.
- Using `update` and `upgrade` to mean almost the same thing.
- Hiding the real side effect behind a vague verb like `process`, `handle`, or `run`.
- Returning a giant stack trace for a missing flag.
- Requiring color to tell success from failure.

## TUI

- A pane you can enter with keyboard but cannot leave with keyboard.
- Using the same visual treatment for focus and selection.
- Hidden modes. The keys change behavior, but the screen never says why.
- Search that silently keeps filtering after the search box closes.
- Empty panes that say nothing about why they are empty.
- Status bars that cover focused content or carry the only error message.
- Single-letter global shortcuts with no off switch.
- A table that truncates the only meaningful identifier and gives no detail view.
- Layouts that collapse into unreadable two-dimensional scrolling for ordinary use.

## Accessibility

- Color-only focus.
- Color-only severity.
- Color-only selected state.
- Mouse-only affordances in a keyboard-first tool.
- Terminal zoom that breaks the layout.
- Unlabeled status updates.
- Shortcut choices that collide with host terminal or assistive technology defaults and cannot be changed.
