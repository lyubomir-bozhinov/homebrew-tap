class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/lyubomir-bozhinov/cxpak"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "be3c795710ac5e650346d23d2a0d64fc6d0f1b0fb68cf4158348594313faa0b7"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "12923b20c3beb8193543da71a5269a8cf7efb59ef49bc3e6519352eca5e91a9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b92c0620b613e316b254eed865b2aabdc1bdd11ef78b5281ac1443a4cb55da58"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.6.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b91bfd4f013cf84ecb1ba058c0a55e3a315bb6c447f28f50e5506d89357288dc"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
