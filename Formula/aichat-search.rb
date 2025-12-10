class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.7/aichat-search-macos-arm64.tar.gz"
      sha256 "05ad7d34e9832e86f87af02e57ee22d41e9e80332aa835d9c66c6acb05463999"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.7/aichat-search-macos-intel.tar.gz"
      sha256 "0b06a233bfaa41138f33e8d26593e6f84303f4c7c3fa97f66682676d3687c710"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.7/aichat-search-linux-arm64.tar.gz"
      sha256 "f4da9bfe64e5233c52157bced9fd0b80ea0bba5fbcee81fd9917a738ada89712"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.7/aichat-search-linux-x86_64.tar.gz"
      sha256 "134970569479653922801db1c9a6b3fb61b4d5b01265052faf3c3c9fb87615bf"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
