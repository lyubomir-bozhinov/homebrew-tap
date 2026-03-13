class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/lyubomir-bozhinov/cxpak"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.7.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "a2fdbada97f47ecd63b06d021abe13021994e830f65cdb79f3055f0012d685fd"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.7.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "37f335c09e6c0f3736cf65101de7f833fece746825176273c51f67593be13ea8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.7.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "901415080a90c00336c66c7bb90f136b60623ffc220b309fe4a43e9684bd5a9c"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.7.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f14f071ddfb9d7d2e8bd2b78ed0d56719c938bdbdbf5f932a1aabe35166bcc6"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
