# Examples

## Command help

```text
$ acme deploy --help
Deploy a release to an environment.

Usage:
  acme deploy <artifact> --env <name> [--wait] [--json]

Arguments:
  <artifact>             Image tag, build id, or release name

Options:
  --env <name>           Target environment
  --wait                 Wait for rollout to finish
  --json                 Print machine-readable result
  -h, --help             Show help

Examples:
  acme deploy build-1842 --env staging
  acme deploy ghcr.io/acme/api:1842 --env prod --wait
  acme deploy build-1842 --env staging --json
```

## Human output and machine output

```text
$ acme jobs show 1842
Job 1842
State: running
Started: 2026-04-22T21:08:41Z
Step: migrate-db
Logs: acme jobs logs 1842
```

```text
$ acme jobs show 1842 --json
{"id":1842,"state":"running","started_at":"2026-04-22T21:08:41Z","step":"migrate-db"}
```

## stderr and progress

```text
$ acme backup create --wait > backup.json
Preparing snapshot...
Uploading chunks 12/48
Uploading chunks 24/48
Uploading chunks 48/48
Backup complete.
```

The primary result goes to `backup.json` on `stdout`. Progress stays on `stderr`.

## Error and recovery

```text
$ acme deploy build-1842
acme deploy: missing required option --env <name>
Try: acme deploy build-1842 --env staging
```

```text
$ acme jobs logs 999999
acme jobs logs: job 999999 was not found
Try: acme jobs list --state failed
```

## Non-interactive behavior

```text
$ acme auth login < token.txt
acme auth login: stdin is not a TTY
Use: acme auth login --token-stdin
```

## TUI layout

```text
+--------------------------------------------------------------------------------+
| Jobs                                   | Job 1842                              |
| Search: migrate                        | State: running                        |
| Filter: state=running                  | Step: migrate-db                      |
|                                        | Started: 21:08:41                     |
| > 1842  migrate-db   3m                |                                        |
|   1841  warm-cache   8m                | Logs                                   |
|   1838  build-image  9m                | -------------------------------------- |
|                                        | Applying migration 3 of 7...          |
|                                        |                                        |
+--------------------------------------------------------------------------------+
| TAB next pane  / search  ENTER inspect  R retry  ESC clear search             |
+--------------------------------------------------------------------------------+
```

## Keybindings and mode visibility

```text
Mode: FILTER
Filter: owner=infra

Tab          next pane
Shift+Tab    previous pane
Up/Down      move in table
Enter        open detail
Ctrl+F       search in current pane
Esc          leave current mode
?            key help
```

## Search and empty state

```text
Search: replica
0 results in current pane

No jobs match "replica".
Clear search with Esc.
```

## No-color behavior

```text
$ NO_COLOR=1 acme jobs tui

 Jobs                            Job 1842
 > 1842  migrate-db              [running]
   1841  warm-cache              [queued]

 Mode: SELECT
 Error: none
```

## Accessibility-sensitive state

```text
Mode: READ-ONLY
Focus: job table
Selection: 2 jobs
Background task: syncing logs
```

Do not rely on color alone to show this state.
