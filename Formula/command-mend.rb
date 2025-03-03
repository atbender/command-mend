class CommandMend < Formula
  desc "Edit terminal commands in a tmux popup with Neovim"
  homepage "https://github.com/atbender/command-mend"
  url "https://github.com/atbender/command-mend/archive/v0.1.1.tar.gz"
  sha256 "357a6066f967fed5e71b1a20cbe5d010df03bf9b76b6540f11545d3b1bd269e3"
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
    system "test", "-x", "#{bin}/command-mend"
  end
end
