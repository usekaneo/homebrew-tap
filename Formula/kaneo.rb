class Kaneo < Formula
  desc "Official command-line client for Kaneo, the open source project manager"
  homepage "https://kaneo.app/docs/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.0/kaneo-darwin-arm64"
      sha256 "2fabfc021c64c06d94354d301667fa9056195d7f2abb00326267edb3e90c2f4e"
    end
    on_intel do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.0/kaneo-darwin-x64"
      sha256 "b0d8fd05c1de09ec4b5ec96043304d9caa723391db82cf5a3bbb4a10e777b69c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.0/kaneo-linux-arm64"
      sha256 "9f0bd0f9f1ef34d40960a941c9eb6c775640d32fdbbcc1f2531f52473c3fb7fc"
    end
    on_intel do
      url "https://github.com/usekaneo/kaneo/releases/download/cli-v0.1.0/kaneo-linux-x64"
      sha256 "5ad0160b936dffcbf011cafe0ee502eaa6321d062640c83955d5cb10b6316a6c"
    end
  end

  def install
    bin.install Dir["kaneo-*"].first => "kaneo"
  end

  test do
    assert_match "\"version\":\"#{version}\"", shell_output("#{bin}/kaneo --version --json")
  end
end
