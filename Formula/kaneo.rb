class Kaneo < Formula
  desc "Official command-line client for Kaneo, the open source project manager"
  homepage "https://kaneo.app/docs/cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.1/kaneo-darwin-arm64"
      sha256 "0c020d677beb4b3643bcb851e18d6eedddaae3664ace72ab2c8d4329c1b21060"
    end
    on_intel do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.1/kaneo-darwin-x64"
      sha256 "f0414bd99c1924b98e4a3c2e729ac65bdadf924c7f030f335d449a94e750115c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.1/kaneo-linux-arm64"
      sha256 "60aeb1f55bce613a14e3303e8ad16a13be6e65d865aa901283026798a6bf3839"
    end
    on_intel do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.1/kaneo-linux-x64"
      sha256 "9eee9f1ea82c6b1e97f9257bae1d95b1f0d30af1b63addc6c079efc95d3bf2f8"
    end
  end

  def install
    bin.install Dir["kaneo-*"].first => "kaneo"
  end

  test do
    assert_match "\"version\":\"#{version}\"", shell_output("#{bin}/kaneo --version --json")
  end
end
