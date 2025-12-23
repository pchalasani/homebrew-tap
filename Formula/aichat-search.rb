class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.16/aichat-search-macos-arm64.tar.gz"
      sha256 "263b8459bb81cce19ef5dd45d5bf8d6448ca2febf94a80549cbd060627d92fbd"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.16/aichat-search-macos-intel.tar.gz"
      sha256 "d3d085ceffbeb635afed625f718853eff1eef99c10b1040f59fd8d316958e64e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.16/aichat-search-linux-arm64.tar.gz"
      sha256 "60978b48b3d42e524d1a4e17b8f4232c4084429d15d6522a6c47a2945dc900d4"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.16/aichat-search-linux-x86_64.tar.gz"
      sha256 "42b2771c0aa2a55448b0ab8bed82cb8d8669ad1c202e20ccf9a4af695341cd37"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
