class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.8/aichat-search-macos-arm64.tar.gz"
      sha256 "a69d8a3605febd6936026cd82189ccc3b991b703a93c20bd33a9aa3124f7062b"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.8/aichat-search-macos-intel.tar.gz"
      sha256 "4f623b2950aea58737ee4a31c1106e73e694b30fc32be799fc2273ff565e61b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.8/aichat-search-linux-arm64.tar.gz"
      sha256 "6cc9fa173f1022cec5d3691ec48097c3a495b8fbf13b9d309a4f375eed5faab6"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.8/aichat-search-linux-x86_64.tar.gz"
      sha256 "d3fe7a4c7e6f98753c23fd0f1b8e357666f240310c66eaf91fc8611303d0fa32"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
