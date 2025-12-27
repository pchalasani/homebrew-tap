class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.21/aichat-search-macos-arm64.tar.gz"
      sha256 "e9799d5fc87bf1a9dd39b29a5404aad531bbe2c9e50e57f6851944ab346d2f05"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.21/aichat-search-macos-intel.tar.gz"
      sha256 "e94d2b348ec2e48946f29f963e8527f4e87ea5b1182affa84ef5980c2fe91811"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.21/aichat-search-linux-arm64.tar.gz"
      sha256 "2a1ab11408049818fd00267ba9a99cc6029822f2dcb6960a65c263a6b033a483"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.21/aichat-search-linux-x86_64.tar.gz"
      sha256 "c6c1657128c7045d7993584446f741fdcd6adb449129ec4412ab9ee08f2c1479"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
