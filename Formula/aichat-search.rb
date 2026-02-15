class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.1/aichat-search-macos-arm64.tar.gz"
      sha256 "78a13e3c2f5fc32978f7f162b0e22b1bf86ad9d0ac9f24cd3e5c7f09f23a1ab2"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.1/aichat-search-macos-intel.tar.gz"
      sha256 "e32422b40a3d4b5454a1935ece7f099ebfa9e9fe94f5b36743317e693f456aa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.1/aichat-search-linux-arm64.tar.gz"
      sha256 "3a6945121d736bdf2c4945327f417944952889bfaf2e04564b634018e295cce2"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.3.1/aichat-search-linux-x86_64.tar.gz"
      sha256 "172700540ff0231d0e11a0074883569040c7f05a3d57c658c7ca57c35bb33848"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
