class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.4/unitymbed-mac-arm64"
      sha256 "acb91ec9000fa53f898a18862f5f5a4f05f6c5d333bd9415f1f5fbc31a02a76b"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.4/unitymbed-mac-x64"
      sha256 "e0c3d8932a6da1cb2da9e0517e2201b1fa78411b414cd2941a0c6fea810fcfe3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.4/unitymbed-linux-arm64"
      sha256 "5736cc3f528a0ee5d9b9424c830ff39669d039827fd2120ff7640ec5f4278332"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.4/unitymbed-linux-x64"
      sha256 "ce6026f3f2f207c8cfd55da0943fd3e3140293efb28593257ce40071fe1b36a8"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
