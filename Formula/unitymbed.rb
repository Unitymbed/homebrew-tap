class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.4/unitymbed-mac-arm64"
      sha256 "206228430d5263aa51da51249457876f39e62f4fdfe707fa85381322239415cb"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.4/unitymbed-mac-x64"
      sha256 "268f35d7fb4eb38431d4bb1de8ab5322a2e62fde376b214615c170a4bf2621b7"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.4/unitymbed-linux-x64"
    sha256 "2b1377c88a15318c3aefad3d5461dd161d725cefb15fe451fbf5eef713b12218"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
