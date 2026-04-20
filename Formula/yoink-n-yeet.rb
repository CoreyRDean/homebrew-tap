class YoinkNYeet < Formula
  desc "Clipboard stack CLI — yoink pushes, yeet pops"
  homepage "https://github.com/CoreyRDean/yoink-n-yeet"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.2/yoink-n-yeet_0.1.2_darwin_arm64.tar.gz"
      sha256 "1d6983b47518546a9bfffeb7c23a036390346acf78fe7a3dc0214bc5b32bc312"
    end
    on_intel do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.2/yoink-n-yeet_0.1.2_darwin_amd64.tar.gz"
      sha256 "f4f955b707271ebffc8368449b285170a8316e6812cdd1c2535f935bb49b420a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.2/yoink-n-yeet_0.1.2_linux_arm64.tar.gz"
      sha256 "c7d1e06707818f4c2a8a4deba086827c05171ecf0f57b5c10d3debd8a86a3fcb"
    end
    on_intel do
      url "https://github.com/CoreyRDean/yoink-n-yeet/releases/download/v0.1.2/yoink-n-yeet_0.1.2_linux_amd64.tar.gz"
      sha256 "f7957186885c58a92e2f6b579f1dc4bfac770c73bb7ba8ef7804e83a0d55f341"
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
