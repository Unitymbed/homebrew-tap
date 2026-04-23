class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.1/unitymbed-mac-arm64"
      sha256 "c7c211e9afe1994a490406f28e53cb3bffa38544518402c3c3fa921c6a105ca3"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.1/unitymbed-mac-x64"
      sha256 "e8d452a7ff50439b94bf6f459a7e0f22de93befc81e268d601dc8ea47002d00c"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.1/unitymbed-linux-x64"
    sha256 "e86d5bc90057f5cc602467158669b2f2280a9af35ee60cdca89a372687a5bc2f"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
