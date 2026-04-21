class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.1/unitymbed-mac-arm64"
      sha256 "ef6a41cfde482e54bf9b7386b98c2eb2762b9653f111a397ea61727874bead18"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.1.1/unitymbed-mac-x64"
      sha256 "84caa1cace0f1252cb37ce03919257d66e94173def0efb93bddd3d7860306eb4"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
