class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.6/aichat-search-macos-arm64.tar.gz"
      sha256 "9f34cce86b09129d81ee75008a8712ac16af93dd3b09ec72d23062bc6abe3620"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.6/aichat-search-macos-intel.tar.gz"
      sha256 "2019fea81552399ddb9d7873933bf9bbe0399800cd99890d091c47818d988b51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.6/aichat-search-linux-arm64.tar.gz"
      sha256 "d7fc9ba9bbdbc06a26e528ab0d724b4646baf01e85a909b8d8c560d5c6359301"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.6/aichat-search-linux-x86_64.tar.gz"
      sha256 "6cf5968ecd4a914218e0047234930103eb958acf8cac3648feeff4b60e54c152"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
