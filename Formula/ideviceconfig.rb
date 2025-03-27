class Ideviceconfig < Formula
  desc "iOS Device Management Tool"
  homepage "https://github.com/fatahillahardhi/homebrew-ideviceconfig"
  version "1.0.0"
  url "https://github.com/fatahillahardhi/homebrew-ideviceconfig/archive/refs/tags/v1.0.0.tar.gz"
  
  depends_on "ruby"

  def install    
    bin.install "bin/ideviceconfig"
  end

end