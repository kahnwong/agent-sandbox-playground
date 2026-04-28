group "default" {
  targets = [
    "sandbox-router",
  ]
}

target "sandbox-router" {
  context    = "setup/sandbox-router"
  dockerfile = "Dockerfile"
  tags       = ["sandbox-router"]
}
