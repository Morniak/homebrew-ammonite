cask "ammonite-notch" do
  version '0.9.0'
  sha256 "b9bd3de86c33701256898caa450d0270f567880f89929256f2bf580700a2a3e0"

  url "https://github.com/Morniak/Ammonite/releases/download/#{version}/Ammonite.zip"
  name "Ammonite"
  desc "Notch widgets for Aerospace tiling manager"
  homepage "https://github.com/Morniak/Ammonite"

  postflight do
    system "xattr -d com.apple.quarantine #{staged_path}/Ammonite.app"
  end

  app "Ammonite.app"
end