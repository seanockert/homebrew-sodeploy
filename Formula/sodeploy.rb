class Sodeploy < Formula
  desc "Deploy a website from a local folder to your Cloudflare domain with one command: so"
  homepage "https://github.com/seanockert/sodeploy"
  url "https://github.com/seanockert/sodeploy/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "901ceac2271863937a6e8ae9c2a993675256b22f54433718b925a17020411f7f"
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