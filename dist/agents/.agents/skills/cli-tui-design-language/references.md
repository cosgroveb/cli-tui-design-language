# References

## Standards And Official Guidance

- POSIX Utility Conventions
  - Option and operand syntax, `--`, short options, and ordering
  - https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap12.html
- POSIX Utilities Introduction
  - `stdout` for output, `stderr` for diagnostics
  - https://pubs.opengroup.org/onlinepubs/9799919799/utilities/V3_chap01.html
- GNU Command-Line Interfaces
  - `--help`, `--version`, output file flags, error style
  - https://www.gnu.org/prep/standards/html_node/Command_002dLine-Interfaces.html
- NO_COLOR
  - Color suppression convention
  - https://no-color.org/
- WCAG2ICT 2.2
  - W3C guidance for applying WCAG to non-web software
  - Informative, not normative
  - https://www.w3.org/TR/wcag2ict-22/

## W3C Understanding And APG

- WAI APG Keyboard Interface
  - Composite widgets, focus, selection
  - https://www.w3.org/WAI/ARIA/apg/practices/keyboard-interface/
- WCAG Understanding: On Focus
  - https://www.w3.org/WAI/WCAG21/Understanding/on-focus
- WCAG Understanding: Status Messages
  - https://www.w3.org/WAI/WCAG21/Understanding/status-messages.html
- WCAG Understanding: Character Key Shortcuts
  - https://www.w3.org/WAI/WCAG21/Understanding/character-key-shortcuts.html
- WCAG Understanding: Focus Not Obscured
  - https://www.w3.org/WAI/WCAG22/Understanding/focus-not-obscured-minimum

## Official Exemplar Docs

- CLIG
  - Modern CLI conventions and examples
  - https://clig.dev/
- Git status porcelain
  - Stable machine-readable output contract
  - https://git-scm.com/docs/git-status
- kubectl get
  - Explicit machine-output modes
  - https://kubernetes.io/docs/reference/kubectl/generated/kubectl_get/
- Docker CLI reference
  - Subcommand tree pattern
  - https://docs.docker.com/reference/cli/docker/container/
- everything curl: progress meter
  - Progress on `stderr`
  - https://everything.curl.dev/cmdline/progressmeter.html
- GNOME HIG
  - Accessibility, utility panes, search, placeholders, keyboard conventions
  - https://developer.gnome.org/hig/
- Windows Terminal docs
  - Search, selection, host-terminal behavior
  - https://learn.microsoft.com/en-us/windows/terminal/
- Apple Terminal accessibility
  - Screen-reader and host-terminal constraints
  - https://support.apple.com/en-tj/guide/terminal/trml1020/mac

## Source Labels Used In This Skill

- `Standard-backed`: grounded in standards or official normative syntax rules.
- `Convention-backed`: grounded in official platform docs, widely-used CLI/TUI guidance, or de facto conventions.
- `House style`: an opinionated rule in this repo. Useful, but not claimed as external authority.
