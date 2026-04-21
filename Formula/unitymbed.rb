class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/unitymbed/releases/download/v0.1.0/unitymbed-mac-arm64"
      sha256 "7f2436d07d2c4b8709252142007aaeb46b7356709091b0b442e237bf229205e0"
    else
      url "https://github.com/Unitymbed/unitymbed/releases/download/v0.1.0/unitymbed-mac-x64"
      sha256 "67d5bff98c4efc1059aa46653832fed6b25b1e35effb50286a746964f5dcb294"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
