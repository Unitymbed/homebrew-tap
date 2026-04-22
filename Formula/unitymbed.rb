class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.6/unitymbed-mac-arm64"
      sha256 "61659de4b7676281fee95c7ec691dcd8a6e48328ca4a4020534935c36b5db5b1"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.6/unitymbed-mac-x64"
      sha256 "a8524b7e7133a6e044e55c44c538822332894deaa5a4ea635ab683f4cb43fb94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.6/unitymbed-linux-arm64"
      sha256 "f1049f69f42202b83bcb70e02f7b4f544776cca5818f0032994a2fc48dcb3cec"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.6/unitymbed-linux-x64"
      sha256 "d7ef466e2ab8079054b5caca6aa808dc54da1b9f04b8033f6918c233ff1b09f2"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
