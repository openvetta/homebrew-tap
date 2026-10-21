# 发布流水线以此为模板生成 openvetta/homebrew-tap 中的 Casks/folita.rb。
cask "folita" do
  version "0.1.3"
  sha256 "0568fe743b25970ae1ea0584291a91e9528364be56ffaf9aaa013337dfa49ec2"

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
