job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "hello-devops" # Note: Ensure this image is available locally or pushed to a registry
      }

      resources {
        cpu    = 100
        memory = 64
      }
    }
  }
}
