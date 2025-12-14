class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.11/aichat-search-macos-arm64.tar.gz"
      sha256 "5484157626d1423af1205c51ba41a373713ad57ef35d5516b1fe1409c37818fb"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.11/aichat-search-macos-intel.tar.gz"
      sha256 "9f703b7d77900bad94b87f28357d3cd499d429ace344b72f153b5fb0f582d88b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.11/aichat-search-linux-arm64.tar.gz"
      sha256 "52f833351583fd5a033da044bb34dc5b32785eadb3b8e341f5816b9bb0980a4b"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.11/aichat-search-linux-x86_64.tar.gz"
      sha256 "42142dd14491bf2930bdc2cdfb306fdfb283ba618f4494472a2d14e46013f674"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
