class JustTui < Formula
  desc "A terminal workbench for discovering, running, and monitoring just recipes"
  homepage "https://github.com/tsangpo/just-tui"
  version "0.2.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/just-tui-v0.2.0/just-tui-aarch64-apple-darwin.tar.xz"
      sha256 "fd4c8ba776d294babd0c0d01ba735e23406ac26150c6eab110be5e47ceaee9ed"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/just-tui-v0.2.0/just-tui-x86_64-apple-darwin.tar.xz"
      sha256 "bdf92faeb05b659da409abb5affb45ca6a1a796fde4d6ef4f1a16b4ae6303dc5"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/just-tui-v0.2.0/just-tui-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "30ff716915ade5c249902bae0e8e9c16259a85650486cb4891aabe02d77e979a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/just-tui-v0.2.0/just-tui-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "019e6f2406540e017270aaf9b7b18e7a46c17aea978194882dd4b5103a0f9bcc"
    end
  end
  license "MIT"
  depends_on "just"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "just-tui" if OS.mac? && Hardware::CPU.arm?
    bin.install "just-tui" if OS.mac? && Hardware::CPU.intel?
    bin.install "just-tui" if OS.linux? && Hardware::CPU.arm?
    bin.install "just-tui" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
