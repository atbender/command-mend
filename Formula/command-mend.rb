class CommandMend < Formula
  desc "Edit terminal commands in a tmux popup with Neovim"
  homepage "https://github.com/atbender/command-mend"
  url "https://github.com/atbender/command-mend/archive/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA" # You'll replace this after creating a release
  license "MIT"

  depends_on "tmux"
  depends_on "neovim"

  def install
    bin.install "bin/command-mend"
  end

  def caveats
    <<~EOS
      To use command-mend, add the following to your ~/.zshrc:

      # Use default keybinding (Ctrl+E)
      source $(brew --prefix command-mend)/bin/command-mend

      # Or use a custom keybinding
      COMMAND_MEND_KEY='^X' source $(brew --prefix command-mend)/bin/command-mend
    EOS
  end

  test do
    # Simple test to check if the script exists and is executable
    system "test", "-x", "#{bin}/command-mend"
  end
end
