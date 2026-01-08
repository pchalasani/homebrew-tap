class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.27/aichat-search-macos-arm64.tar.gz"
      sha256 "ced8091f90246535119fce98e8063de14e7958dceaa4501370802c00a8fbc9a5"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.27/aichat-search-macos-intel.tar.gz"
      sha256 "3ff5113d73054ed975e8100bd02aac6c62d898033d82291400d00e2df0d62387"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.27/aichat-search-linux-arm64.tar.gz"
      sha256 "e406324e6447f1a07013025f28fcfb5580ea5d7a0123b59f1f03729d92a028e4"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.27/aichat-search-linux-x86_64.tar.gz"
      sha256 "c3bf9c945b6924099025d3701b2935207f818e72b114945804eaba7f1052775e"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
