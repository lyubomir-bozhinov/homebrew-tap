class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/lyubomir-bozhinov/cxpak"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "7645f86bc5b6cdeba8a739dab921c318b197294d63776de89e95ddb4c4e87590"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "e1f3a2d348632af73959dabb1651797b1cf92399890e58e001c89561461253ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd5064d1d30b86c1468039ca4e938ed509339a3cdd8baea8b253b6af92f5ef33"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2539fdd5bd59336bc7a2ed3e6ce895855cf0bcaa01f7ad6e18fa16d5591db291"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
