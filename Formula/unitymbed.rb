class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.0/unitymbed-mac-arm64"
      sha256 "ae06d8d56ce04a8410e100cc5c0e9d8518164463062e34bb08f3aff64ff8c71c"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.0/unitymbed-mac-x64"
      sha256 "75c89084bae58701663f4faaa6fb468332d69b74d48cd2f226f4974b1a076dea"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.0/unitymbed-linux-x64"
    sha256 "054017e82e5849e86e84b302445608f8ed4ade092bfea4a8a37b8ec2eca15f26"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
