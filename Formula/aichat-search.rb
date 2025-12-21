class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.15/aichat-search-macos-arm64.tar.gz"
      sha256 "498dc0ca70df39b27d23da00af364fb54d661f4b88e1632c325c8b1104c34510"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.15/aichat-search-macos-intel.tar.gz"
      sha256 "c861c1145b85dcd823c6c42722ef5034e7bb88fe59f1d382a698f0ae9a6645ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.15/aichat-search-linux-arm64.tar.gz"
      sha256 "e51fee2d1c4c736fd7832f0537e824dc9cfe06ff47471334cf27ab2656a90d3b"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.15/aichat-search-linux-x86_64.tar.gz"
      sha256 "6b90ad9e9e33a8bc061793054e69f0fb2dc13d0351577ec96e605951ac496601"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
