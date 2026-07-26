# IraVoice for Mac — Homebrew tap

This is the official Homebrew tap for [IraVoice for Mac](https://iravoice.com/),
private on-device dictation and voice-to-spec software for Apple-silicon Macs.

IraVoice for Mac is not affiliated with unrelated enterprise telephony products
that use the IraVoice name.

## Install

```sh
brew install --cask mvplab-ai/tap/iravoice
```

The cask downloads the same Developer ID signed and Apple-notarized disk image
published on iravoice.com. IraVoice currently requires macOS 26 or later on
Apple silicon.

## Upgrade

```sh
brew update
brew upgrade --cask iravoice
```

## Uninstall

```sh
brew uninstall --cask iravoice
```

Uninstalling the app does not delete IraVoice settings, vocabulary, history, or
license data.

## Verify the release

- [Current release and product identity](https://iravoice.com/about)
- [Published SHA-256 checksum](https://iravoice.com/downloads/IraVoice-0.7.1.dmg.sha256)
- [Privacy and connection boundaries](https://iravoice.com/privacy)

The cask is intentionally small: it declares the supported architecture and
macOS version, verifies the versioned disk image by checksum, and installs
`IraVoice.app`. It does not run a custom installer or post-install script.
