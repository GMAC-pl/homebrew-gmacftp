cask "gmacftp" do
  version "0.2.4"
  sha256 "9d4f8d0cda2ea23f8fc06a830a136f9be970158de97f113dd4d0f539310a3ae4"

  url "https://github.com/GMAC-pl/gmacFTP/releases/download/v#{version}/gmacFTP-#{version}.dmg"
  name "gmacFTP"
  desc "Native dual-pane FTP/FTPS/SFTP client written in Rust"
  homepage "https://github.com/GMAC-pl/gmacFTP"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "gmacFTP.app"

  zap trash: [
    "~/Library/Application Support/mackftp/client",
    "~/Library/Mobile Documents/com~apple~CloudDocs/gmacFTP",
    "~/Library/Saved Application State/app.mackftp.client.savedState",
  ]
end
