class Unitymbed < Formula
  desc "On-premise AI firmware assistant for ARM Cortex MCUs"
  homepage "https://github.com/Unitymbed/homebrew-tap"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.0/unitymbed-mac-arm64"
      sha256 "354a72dbdd4bfeaf71df9556085c4d3d01d6e404b685a36f2fe562524e38c075"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.0/unitymbed-mac-x64"
      sha256 "b90a9e6aa3706dd0be6a115c10ca4cdfb73d30318a57a8a24a3005952713d81c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.0/unitymbed-linux-arm64"
      sha256 "7fe4c56f962a3d0318fc408f80226d176c9a838a4453fe9a3ed60b969df5c3b1"
    else
      url "https://github.com/Unitymbed/homebrew-tap/releases/download/v0.2.0/unitymbed-linux-x64"
      sha256 "400d64fa75fb59a85c10f7884f2b26385ff559eada9eaf3ea7dfbc0f8443d546"
    end
  end

  def install
    bin.install Dir["unitymbed*"].first => "unitymbed"
  end

  test do
    assert_match "unitymbed", shell_output("#{bin}/unitymbed --version 2>&1", 1)
  end
end
