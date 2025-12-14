class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.10/aichat-search-macos-arm64.tar.gz"
      sha256 "e5fe5670c5de323f220ae9348b3626cebf207e1643710d7ebd7e0f58c3cc154e"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.10/aichat-search-macos-intel.tar.gz"
      sha256 "70f943e1a002b5f5a0d799f3b0f3a6afa21e6639ec8071388f786531713312c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.10/aichat-search-linux-arm64.tar.gz"
      sha256 "72a0ebb8371bd8fd0d2dc4658aeffd99dc96d7dfee05a673b3bbdda09a670bf9"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.10/aichat-search-linux-x86_64.tar.gz"
      sha256 "541ba02a50c5a5edf84cd5729687ea1eef4b14d14367741dd90b0194565099ae"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
