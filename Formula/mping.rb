class Mping < Formula
  desc "Multi-target ping utility"
  homepage "https://github.com/GoodiesHQ/mping"
  url "https://github.com/GoodiesHQ/mping/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2f79aea2e2d0205e2836a4790f967e71742859467f67d0333a5bf29f69bffe30"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"mping", "./cmd"
  end

  test do
    system "#{bin}/mping", "--help"
  end
end
