class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/lyubomir-bozhinov/cxpak"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.5.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "9196d568f6141a219cf171d02f1fef36db73696e308137bb0b3bebd259890c03"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.5.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "28f3b15660173d8252d602de2eee3f6a56b6cdffe5f910de250231c921e8e92b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.5.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2892002996f600d725e7444f2cbba0043d04b4a4185e1f9c3d58bda9257e8805"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.5.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2dda611771fe6e156c66e2f473772605c4a710b788e81ffee123ac7388452892"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
