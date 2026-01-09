class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.2.0/aichat-search-macos-arm64.tar.gz"
      sha256 "9cfac99c87019f18a33181e5e9dc9ebff3a441556806cc0814a5eed88e45248b"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.2.0/aichat-search-macos-intel.tar.gz"
      sha256 "75d66214ba27ac2e67a2809e8ed9e1bc800f14ea1ca00a1e9a99da1cc20c64d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.2.0/aichat-search-linux-arm64.tar.gz"
      sha256 "f35db3fe654bd847644400f9c303affd0cc712d6221e22bbd8f0798d2e0a800b"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.2.0/aichat-search-linux-x86_64.tar.gz"
      sha256 "6a936424be645a281febe75de6841cd183c99854d2dcbaf03f725a3168c2aa22"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
