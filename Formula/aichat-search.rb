class AichatSearch < Formula
  desc "Fast TUI for searching Claude Code and Codex sessions"
  homepage "https://github.com/pchalasani/claude-code-tools"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.12/aichat-search-macos-arm64.tar.gz"
      sha256 "3be0711b519e3e8110267b98d4f11efe2ab413a59932ed36b9bbf8fc69a1cd2a"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.12/aichat-search-macos-intel.tar.gz"
      sha256 "51eaf41a4fb7a9bfd58537d7e282f79b4aada6b44f65fc2bf4eaf50e40a578b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.12/aichat-search-linux-arm64.tar.gz"
      sha256 "e12e7fa3bdadd890c0de779ec8cc69c2c9e23cb9a6f16974db3d39cfc66ef7e0"
    end
    on_intel do
      url "https://github.com/pchalasani/claude-code-tools/releases/download/rust-v0.1.12/aichat-search-linux-x86_64.tar.gz"
      sha256 "6e1e7412f6ebbfe9d35a0e86973d95f63fec5c5d92b89314f2a7c9e6c994976d"
    end
  end

  def install
    bin.install "aichat-search"
  end

  test do
    assert_match "aichat-search", shell_output("#{bin}/aichat-search --version")
  end
end
