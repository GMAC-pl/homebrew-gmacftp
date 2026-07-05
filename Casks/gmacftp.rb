cask "gmacftp" do
  version "0.0.15"
  sha256 "67599de99e81ae4a659abb7f1d8e3c17e7b249895680d10ecbef8a5ee15ef5ad"

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
