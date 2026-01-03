class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.25/aichat-search-macos-arm64.tar.gz"
      sha256 "68e3396f9e15baeafdd657ef99ddeeb7235f07133828a01ff7533c1df29416ba"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.25/aichat-search-macos-intel.tar.gz"
      sha256 "0ed9a5e2cd7928d5e57273511b2aa85d04ff0608acf2a781f1d966827d6d70e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.25/aichat-search-linux-arm64.tar.gz"
      sha256 "6bf60d43c070a250c13db371993c0befe320423577de82a48a07207ff4ee3e85"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.25/aichat-search-linux-x86_64.tar.gz"
      sha256 "0fda406bb9dae42103803c21fddb4aaf7fcc47eaff53a1d87333d1fb9fc18f27"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
