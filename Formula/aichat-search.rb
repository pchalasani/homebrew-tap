class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.23/aichat-search-macos-arm64.tar.gz"
      sha256 "947fc14577cbc679e4a0597bf7071ec2de65887d87903c819e87ff80b0e45573"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.23/aichat-search-macos-intel.tar.gz"
      sha256 "8f2fdc4ec0ba13365d2f6ac29a156275608478447dac0c3de68462596b828a4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.23/aichat-search-linux-arm64.tar.gz"
      sha256 "d70e63fa9e93f52efabd90bc19b2ffee38987f22fb187df726713cedb262d079"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.23/aichat-search-linux-x86_64.tar.gz"
      sha256 "bd22b1de824f94aa1d1834bd957bf255a31c7d3d0e96bb392ada3262d363a1e3"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
