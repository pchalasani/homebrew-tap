class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.26/aichat-search-macos-arm64.tar.gz"
      sha256 "d5129b5da64984b3c6b73365a336a98edf4825199cb648859cf46a9572d12c19"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.26/aichat-search-macos-intel.tar.gz"
      sha256 "c2bb4878fc1500924356d343d4a6e40622ea5e6d061c95b7e75e272e1e603dba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.26/aichat-search-linux-arm64.tar.gz"
      sha256 "918a9d2bb9ee99c4f367a90b69cda15bcdf5fde38e9b5a7d1343bc7348be15f1"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.26/aichat-search-linux-x86_64.tar.gz"
      sha256 "b4e32ab6890975ede2323aa97b89798dd04dc9a610a31304d7a64543dbedcca6"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
