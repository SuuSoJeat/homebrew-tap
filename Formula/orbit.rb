class Orbit < Formula
  desc "iCloud-first project workspace CLI"
  homepage "https://github.com/SuuSoJeat/orbit"
  url "https://github.com/SuuSoJeat/orbit/releases/download/v0.3.2/orbit-0.3.2.tar.gz"
  sha256 "237e8bedd4d99178c7bab3525233bd7491754d202c46d4b973d379b36ae25a2d"

  def install
    libexec.install "bin", "templates", "VERSION", "README.md", "Makefile"
    bin.write_exec_script libexec/"bin/orbit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orbit --version").chomp
  end
end
