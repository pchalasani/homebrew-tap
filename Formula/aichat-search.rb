class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.14/aichat-search-macos-arm64.tar.gz"
      sha256 "97b5f2ad32cf1c03e6aea1036063e02a2fb7a38d8627ca1e314c693a231e2214"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.14/aichat-search-macos-intel.tar.gz"
      sha256 "2272b7e6d0cd6580aa9ff3e884634d9008b8b0670a4722af2c46e2030ab933e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.14/aichat-search-linux-arm64.tar.gz"
      sha256 "be17c8fa11d119d0c7a5c3fbe2ce1d1c02eec91406e2379bbf9368a5ed9a414b"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.14/aichat-search-linux-x86_64.tar.gz"
      sha256 "daa07b3d2d46658bbd72c86aefc01b84add732bd9983ea42508c35cc4d33f2a0"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
