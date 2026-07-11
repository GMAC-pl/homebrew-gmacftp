cask "gmacftp" do
  version "0.0.20"
  sha256 "dcfaf615385b05ab5d4d52fa2da31df7c99613f6475bb0f065e339e60662f466"

  url "https://github.com/GMAC-pl/gmacFTP/releases/download/v#{version}/gmacFTP-#{version}.dmg"
  name "gmacFTP"
  desc "Native dual-pane FTP/FTPS/SFTP client written in Rust"
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
