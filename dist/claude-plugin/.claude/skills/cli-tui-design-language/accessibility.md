# Terminal Accessibility

WCAG2ICT is useful here, with one boundary: it is W3C guidance for applying WCAG to non-web software, not a conformance target of its own.

## Keyboard

- `Standard-backed`: All functionality must work from keyboard alone.
- `Standard-backed`: Do not create keyboard traps.
- `Standard-backed`: Focus order must preserve meaning and operability.
- `Convention-backed`: Use `Tab` between major regions and arrows within composites unless the platform has a stronger convention.

## Focus

- `Standard-backed`: Keyboard focus must be visible.
- `Standard-backed`: Focus must not be fully obscured by app chrome or overlays.
- `Standard-backed`: Focus indicators and critical state indicators need sufficient contrast.
- `House style`: Keep focus, selection, hover, and active mode visually distinct even in monochrome.

## Status And Announcements

- `Standard-backed`: Status updates should not steal focus just to be announced.
- `Standard-backed`: If the platform can expose status programmatically, use it for result counts, background task state, and completion messages.
- `House style`: A terminal app should still say the status in plain language on screen, not only through host APIs.

## Text, Contrast, And Resize

- `Standard-backed`: Text must remain usable when users enlarge terminal text or zoom the host terminal.
- `Standard-backed`: Critical text and UI state indicators need sufficient contrast.
- `House style`: Treat low-contrast chrome as optional. Treat low-contrast commands, counts, errors, and focus rings as bugs.

## Color And No-Color

- `Convention-backed`: Honor `NO_COLOR` if color is enabled by default.
- `Convention-backed`: `NO_COLOR` does not require removal of bold, underline, or reverse video.
- `House style`: Never rely on color alone for focus, severity, selection, or mode. Add text, shape, or position.

## Keybinding Conflicts

- `Convention-backed`: Expect conflicts with terminal emulators, window managers, and screen readers.
- `Convention-backed`: Avoid assuming `Alt`, `Ctrl+Option`, mouse reporting, or clipboard shortcuts are always available to the app.
- `House style`: Document a safe baseline keymap and make higher-risk bindings rebindable.

## Test Pass

- `Convention-backed`: Test keyboard-only.
- `Convention-backed`: Test with a screen reader where the platform supports one.
- `Convention-backed`: Test large text or zoom.
- `Convention-backed`: Test high-contrast or low-color conditions.
- `House style`: Test one run with color disabled and one run with a narrow terminal before declaring the design done.
