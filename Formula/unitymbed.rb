class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.5/unitymbed-mac-arm64"
      sha256 "95b7285d969d0615bd9010486686dc9dbaa7e52bfa343dffce18011bea297747"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.5/unitymbed-mac-x64"
      sha256 "accdcf0a82ac3fd77496824b704e8b256ef79b1b685e28d2affed266bc8348e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.5/unitymbed-linux-arm64"
      sha256 "150c38f623538590ab989824916e2818a8232c4e35fd49842de795867dad9929"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.5/unitymbed-linux-x64"
      sha256 "713fe46b013819d10849b5350680592da1c649cf624e46ba6e3b22faa2c95527"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
