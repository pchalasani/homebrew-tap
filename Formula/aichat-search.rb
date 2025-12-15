class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.13/aichat-search-macos-arm64.tar.gz"
      sha256 "25ed0a78041ab6cbb266429f939450f992975771408f8d755bf1e6060ca1d637"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.13/aichat-search-macos-intel.tar.gz"
      sha256 "2e261ad203e4193740d857443305f891be6dbf8048007c9e7a52b8b60ba9cec9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.13/aichat-search-linux-arm64.tar.gz"
      sha256 "e777039603b7b5b87df3a8e3c45d791b46b04bdd1122f36f3c3b1aa7882d2d2c"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.13/aichat-search-linux-x86_64.tar.gz"
      sha256 "66c103e12b22af5e08d59f3ff1f8294786f93738acc358621f3c451fe149d5fb"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
