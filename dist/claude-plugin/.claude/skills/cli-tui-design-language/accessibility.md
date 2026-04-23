# Terminal Accessibility

WCAG2ICT is W3C guidance for applying WCAG to non-web software. Use it alongside WCAG. It is not a separate conformance target.

## Keyboard

- `Standard-backed`: All functionality must work from keyboard alone.
- `Standard-backed`: Do not create keyboard traps.
- `Standard-backed`: Focus order must preserve meaning and operability.
- `Convention-backed`: Use `Tab` between major regions and arrows within composites unless the platform has a stronger convention.

## Focus

- `Standard-backed`: Keyboard focus must be visible.
- `Standard-backed`: Focus must not be fully obscured by app chrome or overlays.
- `Standard-backed`: Focus indicators and critical state indicators must have sufficient contrast.
- `Judgment-backed`: Keep focus, selection, hover, and active mode visually distinct even in monochrome.

## Status and announcements

- `Standard-backed`: Status updates should not steal focus just to be announced.
- `Standard-backed`: If the platform can expose status programmatically, use it for result counts, background task state, and completion messages.
- `Judgment-backed`: Show status in plain language on screen and through host APIs.

## Text, contrast, and resize

- `Standard-backed`: Text must remain usable when users enlarge terminal text or zoom the host terminal.
- `Standard-backed`: Critical text and UI state indicators need sufficient contrast.
- `Judgment-backed`: Decorative chrome can be lower contrast. Commands, counts, errors, and focus rings still need to read clearly.

## Color and no-color

- `Convention-backed`: Honor `NO_COLOR` if color is enabled by default.
- `Convention-backed`: `NO_COLOR` does not require removal of bold, underline, or reverse video.
- `Judgment-backed`: Never rely on color alone for focus, severity, selection, or mode. Add text, shape, or position.

## Keybinding conflicts

- `Convention-backed`: Expect conflicts with terminal emulators, window managers, and screen readers.
- `Convention-backed`: Do not assume `Alt`, `Ctrl+Option`, mouse reporting, or clipboard shortcuts are always available to the app.
- `Judgment-backed`: Document a safe baseline keymap and make higher-risk bindings rebindable.

## Checks

- `Convention-backed`: Test keyboard-only.
- `Convention-backed`: Test with a screen reader where the platform supports one.
- `Convention-backed`: Test large text or zoom.
- `Convention-backed`: Test high-contrast or low-color conditions.
- `Judgment-backed`: Test one run with color disabled and one run in a narrow terminal before calling the design done.
