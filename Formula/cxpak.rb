class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/lyubomir-bozhinov/cxpak"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.4.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "d4c16ca0f284c37c91ed602b11dee231deb2d2d129bb695443325e85fd63c783"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.4.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "82c53371ca12209b27800b0a5eba7412cf2d9dcdb71f77a76e01fa67e3975b7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.4.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aab53075b23d8585d088f668953d58476891c7513ffb2b7540d76073c4507f94"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.4.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc34accb899c91ddb829b90791ef3f5af54a7a0e9dc9d085d214e7b7ca395a85"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
