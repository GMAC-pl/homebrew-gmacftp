# homebrew-gmacftp

Homebrew Cask tap for **gmacFTP** — a fast, secure, native FTP/FTPS/SFTP client for macOS, built in Rust.

## Install

```bash
brew install --cask gmac-pl/gmacftp/gmacftp
```

(Equivalent: `brew tap gmac-pl/gmacftp` then `brew install --cask gmacftp`.)

This installs the same signed + Apple-notarized `gmacFTP.app` that's published on the
[GitHub releases page](https://github.com/GMAC-pl/gmacFTP/releases). Updates:
`brew upgrade --cask gmacftp` (or `brew upgrade --greedy`).

> A pull request to add gmacFTP to Homebrew's official `homebrew/cask` tap is open
> ([Homebrew/homebrew-cask#272665](https://github.com/Homebrew/homebrew-cask/pull/272665)).
> Once it's merged, the bare `brew install --cask gmacftp` will work and this tap becomes
> optional. Until then, use the fully-qualified command above.

## Project

Source code, issues, and direct DMG downloads: <https://github.com/GMAC-pl/gmacftp>
