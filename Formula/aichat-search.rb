class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.18/aichat-search-macos-arm64.tar.gz"
      sha256 "a853e8345881b75408c9e7f8f5b19130c4515c4d85598139bb748bdbe54032fc"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.18/aichat-search-macos-intel.tar.gz"
      sha256 "7ec083a4fb946b1bbc674c717044ba052bf155aae435e3cc2a2e154eba458b8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.18/aichat-search-linux-arm64.tar.gz"
      sha256 "af91d684a29a2d327cfe7cb209c90adf940d541b810e98ee02d9aea9361c55cc"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.18/aichat-search-linux-x86_64.tar.gz"
      sha256 "b8b73739bc9bbf3faf0e2e08191880b14f52c763f81db1fd14b000b274c35063"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
