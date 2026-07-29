# IraVoice for Mac

This is the official Homebrew tap for [IraVoice for Mac](https://iravoice.com/),
a private on-device dictation and voice-to-spec app for Apple-silicon Macs.

IraVoice for Mac is not affiliated with unrelated enterprise telephony products
that use the IraVoice name.

## What IraVoice does

- Hold Right Option to dictate into supported focused text fields.
- Hold Globe to turn a spoken idea into a structured Markdown brief.
- Keep the agent handoff review-first, or explicitly choose a guarded handoff to
  Claude Code or Codex.
- Run speech recognition and supported formatting on the Mac.

The current release requires macOS 26 or later on Apple silicon. Speech models
download on first use. Apple Intelligence is required for polished formatting
and Voice-to-Spec.

IraVoice includes a full 14-day trial with no card or account. A personal
license is $50 once.

## Install with Homebrew

```sh
brew install --cask mvplab-ai/tap/iravoice
```

The cask downloads the same Developer ID signed and Apple-notarized disk image
published on iravoice.com.

You can also download the notarized DMG directly from the
[IraVoice website](https://iravoice.com/).

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

## Privacy and trust boundaries

Speech recognition and supported formatting run on the Mac. Models download on
first use, and Gumroad receives a license key for paid activation. Text pasted
or handed to another app then follows that destination app's own storage and
processing rules.

Read the exact [privacy and connection boundaries](https://iravoice.com/privacy)
before using IraVoice with sensitive text.

## Verify the notarized release

- [Current release and product identity](https://iravoice.com/about)
- [Published SHA-256 checksum](https://iravoice.com/downloads/IraVoice-0.7.2.dmg.sha256)
- [Plain-text product and release facts](https://iravoice.com/assets/press/iravoice-press-facts.txt)
- [Mac dictation privacy matrix](https://iravoice.com/research/mac-dictation-privacy-matrix)

The cask is intentionally small: it declares the supported architecture and
macOS version, verifies the versioned disk image by checksum, and installs
`IraVoice.app`. It does not run a custom installer or post-install script.

## Learn before installing

- [How IraVoice works](https://iravoice.com/#product)
- [Mac dictation and voice typing guides](https://iravoice.com/guides)
- [IraVoice pricing](https://iravoice.com/#pricing)
- [Current release details](https://iravoice.com/about)
- [Common questions](https://iravoice.com/#help)

This public repository contains the Homebrew distribution metadata. The
IraVoice application source code is not published in this repository.
