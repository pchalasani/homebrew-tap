class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.17/aichat-search-macos-arm64.tar.gz"
      sha256 "66e7e255c4203f0f3cd1d928118f4c58993909ea9b2df28f375a952d304c2378"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.17/aichat-search-macos-intel.tar.gz"
      sha256 "a7f6c4c0af8190c938c87bc7d1a708b6150a6e095c1bd9f0824f024dc3c43ac2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.17/aichat-search-linux-arm64.tar.gz"
      sha256 "f194976a1ca9e1c8839282e155cf55f26f152376cd56c0cfd9bbf2bbed452c1a"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.17/aichat-search-linux-x86_64.tar.gz"
      sha256 "c2fc993340dc0e1187cf7403f0bec629f95e41d79673c88db32ed058f68f2a4f"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
