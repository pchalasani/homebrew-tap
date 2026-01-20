class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.0/aichat-search-macos-arm64.tar.gz"
      sha256 "e59636155e7a13bf872ea9496170f6ad5718f0a3a204a188041edbed8b605eaa"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.0/aichat-search-macos-intel.tar.gz"
      sha256 "97680ded58796f1df5d0869250593b88e57e4098d8e1563b9070ed63d706ec23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.0/aichat-search-linux-arm64.tar.gz"
      sha256 "15d44ce27e0e3f47045c1263951c15ca39341d1bee86bd845d70bb4e49e35253"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.0/aichat-search-linux-x86_64.tar.gz"
      sha256 "208fdc8e52f5b9a0496c9b0bc89509f80fd6e13e10d6d401af08a4de7746d9ce"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
