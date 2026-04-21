class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.3/unitymbed-mac-arm64"
      sha256 "28bcad9c38af222257c3db3130a12dbc4f49a1c246ce3fbb70737c7210e38961"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.3/unitymbed-mac-x64"
      sha256 "5f382abace6b9a211cf81d622f881e8f6f8bfabdd17919322438aa191a047f99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.3/unitymbed-linux-arm64"
      sha256 "89143fb79a1383e233f524569883c76381fbc268c2e51ca30e6ef4d8af7cf707"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.3/unitymbed-linux-x64"
      sha256 "ab0b27688546ad18cddf6cf8ebc21927edb738f13b879c545205e7089e96acb6"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
