class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.3/unitymbed-mac-arm64"
      sha256 "1cea3751707d34229aaa8e836638bd14d9c6d50b156e20fb6932a72ce85afe80"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.3/unitymbed-mac-x64"
      sha256 "270293d5d78536f1c7cc8da1ab76612a4246f9d957ffe1ef72c461d144145393"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.3/unitymbed-linux-arm64"
      sha256 "c2466ef50c53ab3c30124195a466aef580231697b7c71d74f0d8415efacbfb07"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.3/unitymbed-linux-x64"
      sha256 "48c5d0d2440e6460f7ff57ef00c1f8111637367e06d92496cb6d889b44de0695"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
