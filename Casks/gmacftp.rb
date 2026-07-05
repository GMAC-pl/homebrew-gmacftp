cask "gmacftp" do
  version "0.0.16"
  sha256 "2767c37b9e71079e7cf9e62bf0f8486bb1150d7289ac807ca6cf46c2e3542180"

  url "https://github.com/GMAC-pl/gmacFTP/releases/download/v#{version}/gmacFTP-#{version}.dmg",
      verified: "github.com/GMAC-pl/gmacFTP/"
  name "gmacFTP"
  desc "Dual-pane FTP/FTPS/SFTP client"
  homepage "https://github.com/GMAC-pl/gmacFTP"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "gmacFTP.app"

  zap trash: [
    "~/Library/Application Support/mackftp/client",
    "~/Library/Mobile Documents/com~apple~CloudDocs/gmacFTP",
    "~/Library/Saved Application State/app.mackftp.client.savedState",
  ]
end
