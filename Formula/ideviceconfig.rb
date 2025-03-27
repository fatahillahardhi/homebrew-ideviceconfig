class Ideviceconfig < Formula
  desc "iOS Device Management Tool"
  homepage "https://github.com/fatahillahardhi/ideviceconfig"
  
  url "https://github.com/fatahillahardhi/ideviceconfig/archive/refs/tags/v1.0.0.tar.gz"
  
  sha256 "57c4473fb96265f1e69480fd141a09e216eb259acb03900314f1147ab005a9e2"
  
  depends_on "ruby"
  depends_on "libimobiledevice"
  depends_on "libplist"
  depends_on "openssl"

  def install
    system "gem", "install", "nokogiri"
    
    bin.install "ideviceconfig"
  end

  def post_install
    ohai "Make sure libimobiledevice is installed correctly"
    ohai "Use 'brew upgrade libimobiledevice' if needed"
  end

  test do
    system "#{bin}/ideviceconfig", "-h"
  end
end