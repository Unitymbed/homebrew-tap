class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.0/unitymbed-mac-arm64"
      sha256 "12afa781a07363afad9dd77f629165af625251e94a84170c1b972fe4c6cef3a2"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.0/unitymbed-mac-x64"
      sha256 "6a9f1f8c30ed9f90dd1f1b07be73e8ca9d8fd09aa4929dfd9e2426fc9dda785a"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.0/unitymbed-linux-x64"
    sha256 "4960298f1358ea8e2dd5480064d8bd79d87705b7d7ed9ed51f8f6f00d5e20e41"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
