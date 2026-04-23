class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.5/unitymbed-mac-arm64"
      sha256 "92c7c4a7879238b7eeef527cd0aa319c1f1af41961586d344b0fcac3046ba509"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.5/unitymbed-mac-x64"
      sha256 "b40a090b8a4cedfb2b59950fca85cd0edf45195ca350b3f5cd50585975c8304d"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.5/unitymbed-linux-x64"
    sha256 "ce055f36379d6d1962b3bd1cb241c8f86a452d04f41553baa1b754aacad65284"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
