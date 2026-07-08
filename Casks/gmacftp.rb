cask "gmacftp" do
  version "0.0.17"
  sha256 "d3d4ba232d90f4aa34059c562a39497f680433d2df797614efad9d5943795ca8"

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
