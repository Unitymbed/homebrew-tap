class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.9.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.9.7/unitymbed-mac-arm64"
      sha256 "2a2ed32e0d0bc6d3aae97237231446dcc4bcbe8030829bd8f772fb11af404978"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.9.7/unitymbed-mac-x64"
      sha256 "2d9d43b9cc0bb994747a65eb222826e758f2565f8fdba9cbae12a8a4d4702042"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.9.7/unitymbed-linux-x64"
    sha256 "3bc9aaf6c3aa90fe723dd98f55f1800e118aab4fe2d63c98a4c00c07f721acc5"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
