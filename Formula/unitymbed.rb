class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.7/unitymbed-mac-arm64"
      sha256 "b375dc3f9002098596e6c9bfea977315bed6d5bd94d7e4cf831370586bb22193"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.7/unitymbed-mac-x64"
      sha256 "7e92cb3c608015534c610b1a7d034bfffc92b9249cdd45b9b5eae07102221b6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.7/unitymbed-linux-arm64"
      sha256 "6a33c94b1f1f8c427ea7ce8f2b04f2e804ccb88c3bd4599a2573f03e06556846"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.7/unitymbed-linux-x64"
      sha256 "9f1a5f0516624caac7a92efd9955859bab37a2d06f4205edbf1165bbe2361881"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
