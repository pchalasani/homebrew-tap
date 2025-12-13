class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.9/aichat-search-macos-arm64.tar.gz"
      sha256 "49bbadaaab5be95f804aaed3c4c1e4b0fe528dbd46ff470666d9a50483ee6805"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.9/aichat-search-macos-intel.tar.gz"
      sha256 "5eaaf29e41fc1b99952e716b2642945c5a3f963a67a5dae155f287cb945203e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.9/aichat-search-linux-arm64.tar.gz"
      sha256 "bafe174b664905c0a6084fc0d86d4203678ab66c95819e4bdf2a59cd406068a0"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.9/aichat-search-linux-x86_64.tar.gz"
      sha256 "fb9412804c792aa4d3f0b29549593de5a3278e38900064cd01b141da97c13b70"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
