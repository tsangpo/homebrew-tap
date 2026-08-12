# just-tui

A terminal workbench for discovering, running, and monitoring
[`just`](https://github.com/casey/just) recipes.

`just-tui` lists public recipes on the left and gives the selected recipe a real
PTY on the right. ANSI colors, in-place progress output, interactive commands,
parallel recipes, mouse controls, and keyboard navigation all work without
leaving the terminal.

> **Public preview:** Prebuilt binaries are public, but the source repository is
> currently private. The project will only be described as open source after
> the source repository becomes public.

[简体中文](docs/README.zh-CN.md)

## Requirements

- Linux or macOS
- [`just`](https://github.com/casey/just) 1.56.0 or newer in `PATH`
- Rust 1.88 or newer only when building from source

`just` 1.56.0 is the minimum because earlier JSON dumps do not fully describe
repeatable recipe arguments.

## Install

Homebrew and Linuxbrew install both `just-tui` and its `just` dependency:

```sh
brew install tsangpo/tap/just-tui
```

Alternatively, download the archive for your platform from the
[`just-tui-v0.2.0` release](https://github.com/tsangpo/homebrew-tap/releases/tag/just-tui-v0.2.0),
verify it against `sha256.sum`, and place `just-tui` in your `PATH`.

## Run

```sh
just-tui [PATH]
```

`PATH` is a project directory and defaults to the current directory. Discovery
of a parent justfile, dotenv handling, and recipe working-directory behavior are
delegated to `just`.

## Controls

| Key or mouse action | Action |
| --- | --- |
| `↑` / `↓`, `j` / `k`, click recipe | Select a recipe and its terminal |
| `Home` / `End` | Select the first / last recipe |
| `/` | Filter by recipe name or description; `Enter` keeps the filter and `Esc` clears it |
| Hover and click Run | Run the recipe |
| Hover a running recipe and click Stop / Rerun | Stop / restart the recipe |
| `r` | Run; reuse the most recent arguments when available |
| `a` | Open the argument form even if arguments were used before |
| `x` | Stop the selected running recipe |
| `Ctrl+C` outside interactive mode | Stop the selected recipe, or quit if none are running |
| `R` | Reload recipes |
| `Tab` | Switch focus between the recipe list and terminal |
| `↑` / `↓`, `j` / `k`, PageUp / PageDown, wheel | Scroll terminal output |
| `g` / `G` | Jump to the oldest output / resume following latest output |
| `i` | Enter interactive mode for the selected running recipe |
| `?` | Toggle help |
| `q` / `Esc` | Quit, with confirmation while recipes are running |

Recipes with parameters open a form. Use `Tab` / `↑` / `↓` or click to change
fields; `←` / `→` / `Home` / `End` to move the cursor; and `Space` to toggle a
flag. For variadic or `multiple` arguments, `Ctrl+N` submits the draft as one
value, `Ctrl+D` removes the last value, and `Ctrl+U` clears text before the
cursor. For a repeatable flag, `Space` adds one occurrence and `Ctrl+D` removes
one.

### Interactive mode

Focus the terminal and press `i` to send almost every key directly to the
running recipe. `Ctrl+C` is sent to the child as SIGINT. Press `Ctrl+]` to return
to normal navigation.

## Boundaries and security

- Each recipe keeps the latest 2,000 lines of PTY scrollback.
- stdout and stderr share one PTY, preserving their real order and ANSI output.
- Stop and shutdown terminate the Unix process group with SIGTERM, followed by
  SIGKILL after two seconds if needed.
- `just-tui` provides no sandbox. Running a recipe has the same trust boundary
  as running it directly with `just`; only run recipes from repositories you
  trust.
- No telemetry, crash reporting, or usage analytics are collected.

The source repository contains `CONTRIBUTING.md` for development and release
checks and `SECURITY.md` for private vulnerability reporting. During the public
preview, report vulnerabilities to `tsangpozheng@gmail.com`.

## License

MIT
