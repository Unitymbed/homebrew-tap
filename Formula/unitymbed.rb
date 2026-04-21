class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.2/unitymbed-mac-arm64"
      sha256 "8de6cf3c6bab0b7588eb4d27f0854fe821c7202c91b762543a1fe422fab03090"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.2/unitymbed-mac-x64"
      sha256 "a8e42328a22e1bbcdb7291d316ac5225c5cb7607ee6d3b4a24cede6af4887a3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.2/unitymbed-linux-arm64"
      sha256 "6bafffe135edab64edd9e3cdf09a2853dc53e9ec182989a05f5767fa787d4720"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.2/unitymbed-linux-x64"
      sha256 "ff0ec929d6c2427baceef50931ba94ebb52e9bb45f99727e7a60b8e026b83d90"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
