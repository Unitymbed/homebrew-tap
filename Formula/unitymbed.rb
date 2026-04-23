class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.4/unitymbed-mac-arm64"
      sha256 "4c5597478f7af196ab6269a450a10d23ab2c347046c8d7e2290cc91146190d94"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.4/unitymbed-mac-x64"
      sha256 "8bc8cf4ec34ace3ee47f267436496d479a188bc8893f418ec60e8d390682a629"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.4/unitymbed-linux-x64"
    sha256 "72df6f942584e49659487eb344ece843ee38c311bc9bbb8318d7600dddbdf186"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
