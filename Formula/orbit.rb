class Orbit < Formula
  desc "iCloud-first project context CLI"
  homepage "https://github.com/SuuSoJeat/orbit"
  url "https://github.com/SuuSoJeat/orbit/releases/download/v0.2.1/orbit-0.2.1.tar.gz"
  sha256 "1d0da51d7ff58b8bdbefa36470b89dd0e0e04a3014fb2e25dc25f2931e9a2e6f"

  def install
    libexec.install "bin", "templates", "VERSION", "README.md", "Makefile"
    (bin/"orbit").write_exec_script libexec/"bin/orbit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orbit --version").chomp
  end
end
