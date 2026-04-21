class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.0/unitymbed-mac-arm64"
      sha256 "85411fe3c8ebc72a6ae7d3edd69cd78426f6bc51d0ee4d41b300318246c7a2a5"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.0/unitymbed-mac-x64"
      sha256 "211d3374a140e845da41fe50b96baf89ec4f6007f48906d6892537cc92689c84"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
