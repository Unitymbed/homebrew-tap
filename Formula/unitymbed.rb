class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.7/unitymbed-mac-arm64"
      sha256 "4f1a9ea84674d094f2915307e5c9aa5f9ca8b01c340b6f45de92d40521661bf2"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.7/unitymbed-mac-x64"
      sha256 "d9f6dc544b2604d9676b971bbea94ad308d1bac528916792f701d502ace0b258"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.7/unitymbed-linux-arm64"
      sha256 "8ed4a4c51b56675a1c75ffb94d57c16b40a642b702d934df2851bbc48b90dfcd"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.7/unitymbed-linux-x64"
      sha256 "ac4db0787dc76a6ce1ef1f18a55f1c349615d781b82c32f0ca98b4999621cd5d"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
