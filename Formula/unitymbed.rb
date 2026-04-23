class Unitymbed < Formula
  desc "AI firmware assistant for ARM Cortex MCUs (Nations N32)"
  homepage "https://github.com/Unitymbed/unitymbed"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.2/unitymbed-mac-arm64"
      sha256 "d7a17ed3b34753c1db250a746932962ef2f16b5ca68227825022597e9cda7607"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.2/unitymbed-mac-x64"
      sha256 "f9c7c40242d18c952b7e246c8fd6b85e42a156881fe5ae875f699a06f274dce8"
    end
  end

  on_linux do
    url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.3.2/unitymbed-linux-x64"
    sha256 "6ba59bb5bd8967ceb110ec90b6d615c5d86c0d97b883b3e59a18c55fb250cb27"
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
