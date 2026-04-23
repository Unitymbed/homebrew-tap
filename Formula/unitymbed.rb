class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.2/unitymbed-mac-arm64"
      sha256 "434c1e3912c7f5ad1797028421d2926de502ec9bcf08763127766f23ea175de5"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.2/unitymbed-mac-x64"
      sha256 "a180818aeca33f22c58bb20cac21a1ddc39580b45b497cd7ef9bf5367bf0600e"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.2/unitymbed-linux-x64"
    sha256 "cfe4bce2799b804ebb1c406b9e5c0ec894c2f3f7fd0b0abd783a262dccbd4373"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
