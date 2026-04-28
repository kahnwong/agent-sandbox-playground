group "default" {
  targets = [
    "sandbox-router",
    "sandbox-template",
  ]
}

target "sandbox-router" {
  context    = "setup/sandbox-router"
  dockerfile = "Dockerfile"
  tags       = ["sandbox-router"]
}
target "sandbox-template" {
  context    = "setup/sandbox-template"
  dockerfile = "Dockerfile"
  tags       = ["sandbox-template"]
}
