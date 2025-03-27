class Ideviceconfig < Formula
  desc "iOS Device Management Tool"
  homepage "https://github.com/fatahillahardhi/ideviceconfig"
  version "1.0.0"
  url "https://github.com/fatahillahardhi/ideviceconfig/archive/refs/tags/v1.0.0.tar.gz"
  
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