class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.1.7"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.7/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "4955b726627f030f8bc277a177ba4386d668003d979ca15a4b759bae2d468283"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.7/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "a2fbc7817de893f9b28ae9cc9a71ea742bd5ce90968dfa9e186c13a2f0ad81c2"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.7/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4b9aee162d34e0de1325630e7f488ea44159ccc352886657a54dcc619f15119c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.7/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "94fd8afeaf445692134db7169245190ce2905aefac3810f562f867fce8a6d2d8"
    end
  end

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
    if OS.mac? && Hardware::CPU.arm?
      bin.install "ptyd"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "ptyd"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "ptyd"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "ptyd"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
