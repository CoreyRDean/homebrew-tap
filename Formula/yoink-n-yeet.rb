class YoinkNYeet < Formula
  desc "Clipboard-stack CLI — yoink pushes, yeet pops"
  homepage "https://github.com/CoreyRDean/yoink-n-yeet"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.3/yoink-n-yeet_0.1.3_darwin_arm64.tar.gz"
      sha256 "de79e432bf220571b8f4aa0f60208d358339db4e3a7b00f74716178b36877684"
    end
    on_intel do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.3/yoink-n-yeet_0.1.3_darwin_amd64.tar.gz"
      sha256 "0717bd7d773b3f7e32d968d83a850fc0ecbf94f5798f3bc8d89f8cca329a69fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.3/yoink-n-yeet_0.1.3_linux_arm64.tar.gz"
      sha256 "c2fcff316fb50a319d847b0d73a4b06fe8636c5cc78b0edda76615f9fc36e494"
    end
    on_intel do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.3/yoink-n-yeet_0.1.3_linux_amd64.tar.gz"
      sha256 "e72ce153e5361f542332fe8c00fdef6f697944fbfb3ec78f6d8fef0833d2a514"
    end
  end

  def install
    bin.install "yoink-n-yeet"
    # Four memorable names, one binary. The CLI dispatches on argv[0] so
    # each symlink gets distinct default behavior (yoink/yk push, yeet/yt pop).
    bin.install_symlink "yoink-n-yeet" => "yoink"
    bin.install_symlink "yoink-n-yeet" => "yeet"
    bin.install_symlink "yoink-n-yeet" => "yk"
    bin.install_symlink "yoink-n-yeet" => "yt"
  end

  test do
    assert_match "yoink-n-yeet", shell_output("#{bin}/yoink-n-yeet --version")
  end
end
