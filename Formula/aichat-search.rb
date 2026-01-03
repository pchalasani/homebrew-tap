class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.24/aichat-search-macos-arm64.tar.gz"
      sha256 "c5154d38db04d0c32af47cb2c08034b88f62f1a3ea1c3cbe34f2bcf193c7dd62"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.24/aichat-search-macos-intel.tar.gz"
      sha256 "e6f0de5495225b17eeeda29c2daf97e3e56bb6dd65cf12a66af8db415852ad21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.24/aichat-search-linux-arm64.tar.gz"
      sha256 "a9579c5c0a69cac2b198daa3f9da57e906119b00e53bfa8a1f2bb17798487702"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.24/aichat-search-linux-x86_64.tar.gz"
      sha256 "115d91baf98968d67c68807f4ac060b814286e13a6454725d39bdfb3c6ea4325"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
