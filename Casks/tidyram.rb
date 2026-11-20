cask "tidyram" do
  version "1.5.0"
  sha256 "0c5dd0cbea05dd41e75869cda91a024b3c9f19c71a43ee0d420828184e8f5c43"

  url "https://github.com/seyi23/TidyRAM/releases/download/v#{version}/TidyRAM-#{version}.zip"
  name "TidyRAM"
  desc "Menu bar app that shows memory usage and safely frees the file cache"
  homepage "https://github.com/seyi23/TidyRAM"

  depends_on macos: :sonoma

  app "TidyRAM.app"

  uninstall quit: "local.tidyram"

  zap trash: [
    "~/Library/Application Support/TidyRAM",
    "~/Library/Preferences/local.tidyram.plist",
  ]

  caveats <<~EOS
    TidyRAM is free, open source and vibe-coded with Claude.
    It is not notarized by Apple, so macOS blocks the first launch.
    Allow it once in System Settings → Privacy & Security → "Open Anyway",
    or run:
      xattr -dr com.apple.quarantine /Applications/TidyRAM.app

    Optional – free memory without a password prompt:
      https://github.com/seyi23/TidyRAM/blob/main/README.en.md#password-prompt-problem-and-workaround
  EOS
end
