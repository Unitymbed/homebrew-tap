class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.5/unitymbed-mac-arm64"
      sha256 "504d5ee0ee079de0c4e3e26cc42f716e64de7592157ef0194da2bfc0d11aa4df"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.5/unitymbed-mac-x64"
      sha256 "0a728dc61d7b9ed7f6590d427bee3128d3fa21d4792bdc4a3509014183fd0a57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.5/unitymbed-linux-arm64"
      sha256 "f79ffc996378def5e83300425ffc56a05c825f27c52573c481a00966b07a525c"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.5/unitymbed-linux-x64"
      sha256 "7b760e97ccd2c3296932e3e4a5c4159080e05423c9142ed7d684680600b273ca"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
