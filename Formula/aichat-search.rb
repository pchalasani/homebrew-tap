class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.22/aichat-search-macos-arm64.tar.gz"
      sha256 "4b3635940284d96c07cde63800f70abc76d1e07d5f0570d073631856780ece37"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.22/aichat-search-macos-intel.tar.gz"
      sha256 "3ba6c84d57c658e3b36819ecfac9a22b8129e43012bea79d3c35e014352a34d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.22/aichat-search-linux-arm64.tar.gz"
      sha256 "6eae40671603878cefa9e98ec957e9c4788ca5a394af7076935a3136b3e433aa"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.22/aichat-search-linux-x86_64.tar.gz"
      sha256 "9875b49f63282a5766f1b67a478a838af43988841be7beb70b00216cda7595e6"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
