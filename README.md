# Homebrew tap for TidyRAM

[TidyRAM](https://github.com/seyi23/TidyRAM) is a free, open-source macOS menu bar app that shows memory usage and safely frees the file cache. Vibe-coded with Claude.

```bash
brew tap seyi23/tidyram
brew trust seyi23/tidyram      # Homebrew 7+ only: allow this third-party tap
brew install --cask tidyram
```

Update: `brew upgrade --cask tidyram` · Uninstall: `brew uninstall --cask --zap tidyram`

TidyRAM is not notarized by Apple. On first launch, allow it once in *System Settings → Privacy & Security → "Open Anyway"*.

---

**Deutsch:** Installation mit `brew tap seyi23/tidyram`, ab Homebrew 7 zusätzlich `brew trust seyi23/tidyram`, dann `brew install --cask tidyram`. Beim ersten Start einmal unter *Systemeinstellungen → Datenschutz & Sicherheit → „Dennoch öffnen“* freigeben. Mehr in der [Dokumentation](https://github.com/seyi23/TidyRAM#readme).

The cask is updated after every release with `scripts/update-homebrew.sh` in the main repository.
