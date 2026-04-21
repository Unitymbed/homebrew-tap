class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.2/unitymbed-mac-arm64"
      sha256 "e3641cab894578e0bdadf0d4da0043fe2f7eb8c950b35970ccb4f48bd92f0747"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.2/unitymbed-mac-x64"
      sha256 "dd2a6b41e6ed6b2feaed8a975053624806936bad43c07ed55a875e86e45c3e16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.2/unitymbed-linux-arm64"
      sha256 "5d5c4a60ae49f08eb031a2bd04b7ce646136a26f745fc33df2c511742f91b739"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.2/unitymbed-linux-x64"
      sha256 "90b3201b31a4476d5e1ac785470b77f91ab340039e9e40bc847b23983d22a78b"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
