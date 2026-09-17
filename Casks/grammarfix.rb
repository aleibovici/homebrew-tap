cask "grammarfix" do
  version "1.0"
  sha256 "a25b08573d109a3de796a38fbffb8a02bee5cf5a3b0370998028086b3238c0ff"

  url "https://github.com/aleibovici/grammarfix/releases/download/v#{version}/GrammarFix-#{version}.zip"
  name "GrammarFix"
  desc "Menu bar app that fixes the grammar of selected text"
  homepage "https://github.com/aleibovici/grammarfix"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "GrammarFix.app"

  uninstall quit: "nz.grammarfix.app"

  zap trash: "~/Library/Preferences/nz.grammarfix.app.plist"
end
