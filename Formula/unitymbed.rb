class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.1/unitymbed-mac-arm64"
      sha256 "3d09812c5f0630eccd61ba0d938a37b59d59a2ce4cd30f879ced4083854e4387"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.1/unitymbed-mac-x64"
      sha256 "bf2d1e4efc1a03abaa9c8e60fbc5e7020d8569876d86bef7d9afe5151018a987"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.5.1/unitymbed-linux-x64"
    sha256 "74e7a757f48e39ac25e366dff6fcd088cbaaa1ba556918a6b78dcc09d1db80b8"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
