class Ptyd < Formula
  desc "A web terminal daemon serving an xterm.js UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.1.4"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.4/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "f53452757a0af35dbb1510d06944a26640f3f6036ff06b430cda2c1dcdf79098"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.4/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "00713d2ed28e45855e004e1c05eef6bc8f512005fc3e322876998b8e43f1f081"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.4/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "1d5ad2e958879f4cff29b7121cf6957e46421e7ea4dd1335027746a983c262aa"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.4/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "843648cce4a17ba09312ba1bd30176d1a255c3050ed0219e24488467ec51bb63"
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
    bin.install "ptyd" if OS.mac? && Hardware::CPU.arm?
    bin.install "ptyd" if OS.mac? && Hardware::CPU.intel?
    bin.install "ptyd" if OS.linux? && Hardware::CPU.arm?
    bin.install "ptyd" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
