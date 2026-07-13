cask "gmacftp" do
  version "0.2.1"
  sha256 "195941faa8cef89cbb9dfd336f651e3e72f1fa8aa125b72a5ab63221469a40c1"

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
