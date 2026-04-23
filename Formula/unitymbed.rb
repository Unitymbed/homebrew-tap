class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.3/unitymbed-mac-arm64"
      sha256 "61a41c52a44c9884ea464b6f49306cee0b045a530877f09c4d562c8aba409fc4"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.3/unitymbed-mac-x64"
      sha256 "aa65a1cc5529fd050d851876915eeec456fd5799e0c4fbc3b6530414a4e58ca6"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.3/unitymbed-linux-x64"
    sha256 "14da256e076009206cc6ec6e6ec0213f9cbdaa807940af6fb99feda9495b7504"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
