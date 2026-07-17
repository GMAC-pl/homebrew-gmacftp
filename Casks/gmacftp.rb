cask "gmacftp" do
  version "0.2.3"
  sha256 "2f0e41f69107eeabce6a26e347637b40ceea9d0d7df528e724906f20c4fd5208"

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
