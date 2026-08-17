class Orbit < Formula
  desc "iCloud-first project context CLI"
  homepage "https://github.com/SuuSoJeat/orbit"
  url "https://github.com/SuuSoJeat/orbit/releases/download/v0.3.0/orbit-0.3.0.tar.gz"
  sha256 "9648be4ad003cf8628d6218cb6813fa3bdbb7a4c5db5397e4d3cb281feb2c19b"

  def install
    libexec.install "bin", "templates", "VERSION", "README.md", "Makefile"
    bin.install_symlink libexec/"bin/orbit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orbit --version").chomp
  end
end
