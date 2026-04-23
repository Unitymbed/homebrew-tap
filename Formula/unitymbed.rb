class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.3/unitymbed-mac-arm64"
      sha256 "fd4e169ddd6182db94493922225ce504cd4e264ea0c36d922329be613db22ebc"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.3/unitymbed-mac-x64"
      sha256 "3cebc8268eca52a671591b4d82ac6389e0341565fe44006ebb19626e0fd89426"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.3/unitymbed-linux-x64"
    sha256 "fc75c3f27f82d6f6d55cd99a268d685edb4be75889331499f684b5e0ccd297c9"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
