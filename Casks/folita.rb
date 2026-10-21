# 发布流水线以此为模板生成 openvetta/homebrew-tap 中的 Casks/folita.rb。
cask "folita" do
  version "0.1.0"
  sha256 "84c62da2fa7f87215285958d2209e235cc03bedb2b0be11d01f431e6bcd08221"

  url "https://github.com/openvetta/folita/releases/download/v#{version}/Folita-#{version}.zip"
  name "Folita"
  desc "Clipboard manager with a Liquid Glass panel"
  homepage "https://github.com/openvetta/folita"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Folita.app"

  zap trash: [
    "~/Library/Containers/app.folita.Folita",
  ]
end
