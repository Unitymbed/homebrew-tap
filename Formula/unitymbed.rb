class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.4.0/unitymbed-mac-arm64"
      sha256 "062be79c0ec1a2b05cc7186adb413b1db94901bf22d53affeb5b29753be756a2"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.4.0/unitymbed-mac-x64"
      sha256 "4f17d6b85317e76d4c15e63652eddf1b4025bfad55132d14f99f4efb6b45aebd"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.4.0/unitymbed-linux-x64"
    sha256 "3486a1f2b323dae37a6f6841b34c790be9d7edfe2069b24421bf530b7dfe04c2"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
