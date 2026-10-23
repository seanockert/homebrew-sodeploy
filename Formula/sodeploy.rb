class Sodeploy < Formula
  desc "Deploy a website from a local folder to your Cloudflare domain with one command: so"
  homepage "https://github.com/seanockert/sodeploy"
  url "https://github.com/seanockert/sodeploy/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "187e8b181c48026c71a47616eac98b0a7ab4a38327f3f9f5ef20402811596170"
  license "MIT"
  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "so"
  end

  test do
    system "#{bin}/so", "--help"
  end
end