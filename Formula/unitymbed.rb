class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.8/unitymbed-mac-arm64"
      sha256 "554a79b23cb8930664b59a93d1c0980cb693148b262c5059b30e590547beee70"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.8/unitymbed-mac-x64"
      sha256 "e903307e27ef4fb4a54daa9e784b6e7fdff789544209961246dae8d576127e04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.8/unitymbed-linux-arm64"
      sha256 "ffec3a848bae266755a4549a96f7c44a717954ca61c169abc2e51f098ecd18cb"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.8/unitymbed-linux-x64"
      sha256 "eb6c69ad4ac2a7bfc5c272813479b85b18270699a27c5e69fc4bf98fff8ecc19"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
