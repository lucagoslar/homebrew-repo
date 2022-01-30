class Chiffre < Formula
  version "0.1.0"
  desc "RSA file encryption, decryption and key pair generation"
  homepage "https://github.com/lucagoslar/chiffre"
  url "https://github.com/lucagoslar/chiffre/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "231918c6a9c7f2a9954ecd7a7062d81c38b811c71bdccf3e1a77c70d8bba12c2"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/chiffre"
  end
end