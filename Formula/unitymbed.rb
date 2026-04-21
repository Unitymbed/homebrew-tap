class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.1/unitymbed-mac-arm64"
      sha256 "d5c65553da8a3f87641fb34f84280c0ab47a74617d2e408e8b2fb4447d740a38"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.1/unitymbed-mac-x64"
      sha256 "02db4261eb33ffd0cf86c0d86d090813b6075f7570261658247fbb054ef24c3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.1/unitymbed-linux-arm64"
      sha256 "4c9b0a18cbec7bcb842cac6c214ba9139d5e486920b634e06cc98a6790b2368c"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.1/unitymbed-linux-x64"
      sha256 "fb72b935d2328a972dc75afb170ca95b17940a5d53a789b717351f5261e74003"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
