cask "ammonite-notch" do
  version '0.9.0'
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/Morniak/Ammonite/releases/download/#{version}/Ammonite.zip"
  name "Ammonite"
  desc "Notch widgets for Aerospace tiling manager"
  homepage "https://github.com/Morniak/Ammonite"

  postflight do
    system "xattr -d com.apple.quarantine #{staged_path}/Ammonite.app"
  end

  app "Ammonite.app"
end