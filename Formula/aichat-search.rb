class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.20/aichat-search-macos-arm64.tar.gz"
      sha256 "3d44d615188dfe2bd8af6b1ec7f988b2b61b263b21734eba10bdd4fb5b46666b"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.20/aichat-search-macos-intel.tar.gz"
      sha256 "5294264a258932f8902f1dea6456b60628136157d93eb9666992029590ac27f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.20/aichat-search-linux-arm64.tar.gz"
      sha256 "6fd159de5aaa868e68bbb7f3c085479cef427c42c79fef02b6528faa3f97c5d4"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.20/aichat-search-linux-x86_64.tar.gz"
      sha256 "dab98399821898b578ed235dab03e87390d0e33da0d7b7587090978b52a09e92"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
