path    = require("path")

module.exports =

  progress: true

  entry:
    app: "./src/coffee/app.cjsx"

  output:
    path: path.join(__dirname, "../../public/javascripts/")
    filename: "[name].js"

  devtool: "source-map"

  resolve:
    modulesDirectories: ["node_modules"]
    extensions: ["", ".cjsx", ".coffee", ".webpack.js", ".web.js", ".js"]

  module:
    loaders: [
      {test: /.cjsx$/, loaders: ["coffee-loader", "cjsx-loader"]}
      {test: /.coffee$/, loader: "coffee-loader"}
    ]
