# CoreyRDean's Homebrew Tap

A [Homebrew](https://brew.sh) tap for tools maintained by [@CoreyRDean](https://github.com/CoreyRDean).

## Usage

```sh
brew tap CoreyRDean/tap
```

Then install any of the formulae below. Or install in one command without tapping first:

```sh
brew install CoreyRDean/tap/<formula>
```

## Available formulae

### `yoink-n-yeet`

A clipboard stack CLI for your terminal. `yoink` pushes, `yeet` pops. Pipe-native, cross-platform, zero runtime deps.

```sh
brew install CoreyRDean/tap/yoink-n-yeet
```

Upstream: https://github.com/CoreyRDean/yoink-n-yeet

## Updating formulae

For v0.1.x these are hand-maintained. Once a release PAT (`HOMEBREW_TAP_TOKEN`) is provisioned on the upstream repo, `goreleaser` will bump formula versions automatically on tag pushes.

## License

MIT. See the individual upstream projects for their own license terms.
