cask "gmacftp" do
  version "0.2.0"
  sha256 "9881cac3947c141c3a87cd5ee185fc62763690a950226076cfca3776ef371b72"

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
