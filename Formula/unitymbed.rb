class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.6/unitymbed-mac-arm64"
      sha256 "e1630ac1f34c703cca2e50d1e4143cf00b6cefcadb3f9fe2ac850df4aea6831f"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.6/unitymbed-mac-x64"
      sha256 "7a6d46fe63a68289a56ab872b7068a7bd7135b3fdea4e953dcf0b18390a000dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.6/unitymbed-linux-arm64"
      sha256 "02ab99c7c1405db2501be125fa2579a0cd5afc5aa5bc8706b9d8a4c0a5bc0423"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.6/unitymbed-linux-x64"
      sha256 "eedf78614a661855b182b7127744da860342f2b01d45af3ec2ca9f0b0d5443e8"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
