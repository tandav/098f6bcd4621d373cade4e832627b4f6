workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Docker-1"]
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@76ff57a"
  runs = "docker build -t hw ."
}

action "GitHub Action for Docker-1" {
  uses = "actions/docker/cli@76ff57a"
  needs = ["GitHub Action for Docker"]
  runs = "docker run -it sales"
}
