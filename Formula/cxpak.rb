class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/lyubomir-bozhinov/cxpak"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.8.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "b0342ba5342b71a2bb7e87c37a0f02e4a36b2adc5c9ff4c1e0a56ee81b883462"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.8.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "9e89650d83aeee81e9183917dd3dd6e4375633fcb40336be6e7e34604d327fc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.8.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f096d82e4aaa46bd65691e87efa43d486204049e03e6d6411abf4e85010a84e9"
    else
      url "https://github.com/lyubomir-bozhinov/cxpak/releases/download/v0.8.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "618dd63f8ce356e2b4e74642013c9f02e3f92544fa0c5461dc0088571ad24a4f"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
