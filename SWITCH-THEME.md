# Switch theme

Use one command for local work:

```bash
make dev
```

Pick a theme with `THEME`:

```bash
make dev THEME=cuisine-book
```

If you only want a one-off static build:

```bash
make build
make build THEME=cuisine-book
```

## Where theme config lives

Shared settings live in `config/common.toml`.
Theme-specific settings live in:

- `config/cookbook.toml`
- `config/cuisine-book.toml`

The root `hugo.toml` is only a shared fallback file.
Do not switch themes there.

## Why

`make dev` runs Hugo in server mode with `--renderToDisk`, so it:

- serves the site locally
- writes generated files to `public/`

That makes it the best single command for local development.

`make build` is still useful when you want a one-shot production build without starting a server.

## Available themes

- `cookbook`
- `cuisine-book`
