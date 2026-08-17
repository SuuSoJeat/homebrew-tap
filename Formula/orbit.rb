class Orbit < Formula
  desc "iCloud-first project workspace CLI"
  homepage "https://github.com/SuuSoJeat/orbit"
  url "https://github.com/SuuSoJeat/orbit/releases/download/v0.3.1/orbit-0.3.1.tar.gz"
  sha256 "e3e13addb674f20aef463289408aa74526184d1f30b69b104e736ffb50379bf1"

  def install
    libexec.install "bin", "templates", "VERSION", "README.md", "Makefile"
    bin.write_exec_script libexec/"bin/orbit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orbit --version").chomp
  end
end
