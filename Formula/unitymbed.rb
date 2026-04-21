class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.9/unitymbed-mac-arm64"
      sha256 "937de5aabcbd580ac061f35a6013e2391862eac2d350523df296ac1d84b6fb59"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.9/unitymbed-mac-x64"
      sha256 "dfd25f446ff625eb17dfe2a37683939e2925bdc354fea5fb33b35272190fe829"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.9/unitymbed-linux-arm64"
      sha256 "9ba88fb576c8665d963554eee78353caa2cf01d1ade4149f79677d84ed828f49"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.9/unitymbed-linux-x64"
      sha256 "fe5d620c53406bf17a90ac539a43900c78862959c0204df1d13d0580a1f9a55f"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
