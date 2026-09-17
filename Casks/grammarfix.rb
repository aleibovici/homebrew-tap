cask "grammarfix" do
  version "1.1"
  sha256 "a9fa3383c646b8e058ed4266d0733598f697293dea94ba1ec7f288a72fe0935c"

  url "https://github.com/aleibovici/grammarfix/releases/download/v#{version}/GrammarFix-#{version}.zip"
  name "GrammarFix"
  desc "Menu bar app that fixes the grammar of selected text"
  homepage "https://github.com/aleibovici/grammarfix"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "GrammarFix.app"

  uninstall quit: "nz.grammarfix.app"

  zap trash: "~/Library/Preferences/nz.grammarfix.app.plist"
end
