class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.9.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.9.9/unitymbed-mac-arm64"
      sha256 "859711a67eb94e27a5fd60fb385b6e280f7ffba78419a1eb78372b758eaeffc1"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.9.9/unitymbed-mac-x64"
      sha256 "40a5eef495fde27473c458f3a89c2efc7d09b0f628deccd3268f009255a114cd"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.9.9/unitymbed-linux-x64"
    sha256 "d0b33f0cd9188a58bf1cb1518410a5504e84d91d5466094c20056424a8b14e7f"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
