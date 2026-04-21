class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.4/unitymbed-mac-arm64"
      sha256 "585f36e83f15b701b2f94e57bdd53955888de712b928bb801c00ac8b3768a953"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.4/unitymbed-mac-x64"
      sha256 "4796da305c22c57a7f7642576d57df7314df0efe9b5acb8c700fcd40e949ef13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.4/unitymbed-linux-arm64"
      sha256 "065d8aee6c58fe75e7321ce4458d2b3640e1151aab7c7e0744f173485b06bd7d"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.4/unitymbed-linux-x64"
      sha256 "b837d0e51f8ded75371a9750887571b4f2147e35a0555881438f42ea2315cb9f"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
