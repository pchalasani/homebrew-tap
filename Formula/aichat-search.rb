class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.19/aichat-search-macos-arm64.tar.gz"
      sha256 "a72394979f093eeb120775fe2156ca5bd05018b710c1ded9aa177d9548a33414"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.19/aichat-search-macos-intel.tar.gz"
      sha256 "314c929f4b877b4089a78d224bb76ada5c69a45ca600c0513b6de8807a752bae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.19/aichat-search-linux-arm64.tar.gz"
      sha256 "4c59a89c7ab21daa937db4d1c496bf34c23f71138e812d14f74e8e56d344f2eb"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.19/aichat-search-linux-x86_64.tar.gz"
      sha256 "722135b45e4860216d90c8db086f76c93ae33997368ce9271f8185f9cf1fca78"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
